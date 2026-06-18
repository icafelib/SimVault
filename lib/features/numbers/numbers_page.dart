import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/phone_card.dart';

class NumbersPage extends ConsumerWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phonesAsync = ref.watch(phoneNumbersStreamProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('号码')),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        onPressed: () => Navigator.of(context).pushNamed('/numbers/new'),
        icon: const Icon(Icons.add),
        label: const Text('添加号码'),
      ),
      body: phonesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('加载失败：$e')),
        data: (list) {
          if (list.isEmpty) return const _EmptyState();
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
            itemCount: list.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, i) => PhoneCard(
              phone: list[i],
              onTap: () => Navigator.of(context)
                  .pushNamed('/numbers/detail', arguments: list[i].id),
            ),
          );
        },
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 96,
            height: 96,
            decoration: const BoxDecoration(
              gradient: AppColors.brandGradient,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.sim_card, color: Colors.white, size: 44),
          ),
          const SizedBox(height: 16),
          const Text('还没有号码', style: TextStyle(color: AppColors.title, fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          const Text('点击下方按钮添加你的第一个号码', style: TextStyle(color: AppColors.secondary)),
        ],
      ),
    );
  }
}
