import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../data/db/app_database.dart';

class PhoneCard extends StatelessWidget {
  const PhoneCard({super.key, required this.phone, this.onTap});

  final PhoneNumber phone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [AppColors.cardShadow],
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  gradient: AppColors.brandGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.sim_card, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatNumber(phone.number),
                      style: const TextStyle(
                        color: AppColors.title,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${phone.carrier} · ${_purposeLabel(phone.purpose)}',
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.secondary),
            ],
          ),
        ),
      ),
    );
  }

  static String _formatNumber(String n) {
    if (n.length == 11) {
      return '${n.substring(0, 3)} ${n.substring(3, 7)} ${n.substring(7)}';
    }
    return n;
  }

  static String _purposeLabel(String p) {
    return switch (p) {
      'primary' => '主力',
      'work' => '工作',
      'backup' => '备用',
      'iot' => '物联网',
      _ => p,
    };
  }
}
