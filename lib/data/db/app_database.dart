import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables.dart';

part 'app_database.g.dart';

const _kDbFileName = 'simvault.db';

/// 应用数据库，使用 Drift ORM，包含所有核心数据表
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

/// 创建数据库连接，数据库文件存于应用文档目录
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, _kDbFileName));
    return NativeDatabase(file);
  });
}
