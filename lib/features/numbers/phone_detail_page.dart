import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../core/theme/app_colors.dart';
import '../../data/db/app_database.dart';
import '../discover/carrier_detail_page.dart';

/// 屏幕中央显示 Toast 提示
void _showCenterToast(BuildContext context, String msg) {
  final overlay = Overlay.of(context);
  final entry = OverlayEntry(
    builder: (_) => Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(msg, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ),
      ),
    ),
  );
  overlay.insert(entry);
  Future.delayed(const Duration(seconds: 2), entry.remove);
}

/// 号码详情页，展示号码基础信息并支持删除
class PhoneDetailPage extends ConsumerWidget {
  const PhoneDetailPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('号码详情'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline, color: AppColors.danger),
            onPressed: () => _confirmDelete(context, ref),
          ),
        ],
      ),
      body: FutureBuilder<PhoneNumber?>(
        future: ref.read(phoneNumberRepositoryProvider).findById(id),
        builder: (context, snap) {
          if (!snap.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final phone = snap.data;
          if (phone == null) return const Center(child: Text('号码不存在'));
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _Section(title: '基础信息', children: [
                _Row(label: '号码', value: phone.number),
                _Row(label: '运营商', value: phone.carrier),
                _Row(label: '用途', value: phone.purpose),
                if (phone.iccid != null) _Row(label: 'ICCID', value: phone.iccid!),
                if (phone.note != null) _Row(label: '备注', value: phone.note!),
              ]),
              const SizedBox(height: 16),
              const _Placeholder(title: '保号提醒', subtitle: '即将上线'),
              const SizedBox(height: 12),
              _Placeholder(
                title: '运营商介绍',
                subtitle: '查看 ${phone.carrier} 的详细介绍',
                onTap: () {
                  final found = kCarriers.where(
                    (c) => c.name.toLowerCase() == phone.carrier.trim().toLowerCase(),
                  );
                  if (found.isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => CarrierDetailPage(carrier: found.first),
                    ));
                  } else {
                    _showCenterToast(context, '暂无运营商介绍');
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }

  /// 弹出确认对话框后删除号码及其所有关联数据
  Future<void> _confirmDelete(BuildContext context, WidgetRef ref) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('删除号码'),
        content: const Text('确定要删除该号码及其关联的所有数据吗？'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消')),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('删除', style: TextStyle(color: AppColors.danger))),
        ],
      ),
    );
    if (ok == true) {
      await ref.read(phoneNumberRepositoryProvider).delete(id);
      if (context.mounted) Navigator.pop(context);
    }
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [AppColors.cardShadow],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: AppColors.title,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 72,
              child: Text(label,
                  style: const TextStyle(color: AppColors.secondary, fontSize: 13))),
          Expanded(
              child: Text(value,
                  style: const TextStyle(color: AppColors.title, fontSize: 14))),
        ],
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.title, required this.subtitle, this.onTap});
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [AppColors.cardShadow],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: AppColors.title,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: const TextStyle(
                          color: AppColors.secondary, fontSize: 12)),
                ],
              ),
            ),
            Icon(
              onTap != null ? Icons.chevron_right : Icons.lock_clock,
              color: AppColors.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
