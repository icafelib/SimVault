import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';
import 'package:uuid/uuid.dart';

import 'tables.dart';

part 'app_database.g.dart';

const _kDbKeyName = 'simvault_db_key_v1';
const _kDbFileName = 'simvault.db';

@DriftDatabase(tables: [
  PhoneNumbers,
  Plans,
  KeepAliveRules,
  Activities,
  Assets,
  Mvnos,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    await applyWorkaroundToOpenSqlCipherOnOldAndroidVersions();
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, _kDbFileName));

    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );

    var key = await storage.read(key: _kDbKeyName);
    if (key == null) {
      key = const Uuid().v4().replaceAll('-', '');
      await storage.write(key: _kDbKeyName, value: key);
    }
    final dbKey = key;

    return NativeDatabase(
      file,
      setup: (db) {
        db.execute("PRAGMA key = '$dbKey';");
        final result = db.select('PRAGMA cipher_version;');
        // ignore: avoid_print
        print('[DB] cipher_version rows=${result.length}, data=$result');
      },
    );
  });
}
