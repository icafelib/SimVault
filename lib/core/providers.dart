import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../data/repositories/phone_number_repository.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final phoneNumberRepositoryProvider = Provider<PhoneNumberRepository>((ref) {
  return PhoneNumberRepository(ref.watch(databaseProvider));
});

final phoneNumbersStreamProvider = StreamProvider<List<PhoneNumber>>((ref) {
  return ref.watch(phoneNumberRepositoryProvider).watchAll();
});
