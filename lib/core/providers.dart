import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';
import '../data/repositories/phone_number_repository.dart';

/// 全局数据库单例，应用生命周期内保持唯一实例
final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

/// 号码数据仓库，依赖 [databaseProvider]
final phoneNumberRepositoryProvider = Provider<PhoneNumberRepository>((ref) {
  return PhoneNumberRepository(ref.watch(databaseProvider));
});

/// 实时监听所有号码列表的流式 Provider
final phoneNumbersStreamProvider = StreamProvider<List<PhoneNumber>>((ref) {
  return ref.watch(phoneNumberRepositoryProvider).watchAll();
});
