import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('反馈')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('欢迎反馈',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.title)),
            const SizedBox(height: 8),
            const Text('您的反馈是我们改进的动力，感谢您抽出时间告诉我们您的想法！',
                style: TextStyle(color: AppColors.text, height: 1.6)),
            const SizedBox(height: 32),
            const Text('反馈方式', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.title)),
            const SizedBox(height: 12),
            _FeedbackMethod(
              icon: Icons.email_outlined,
              title: '邮件反馈',
              subtitle: 'feedback@simvault.app',
            ),
            const SizedBox(height: 12),
            _FeedbackMethod(
              icon: Icons.chat_bubble_outline,
              title: '社区讨论',
              subtitle: 'github.com/simvault/discussions',
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedbackMethod extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeedbackMethod({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.title)),
              Text(subtitle, style: const TextStyle(fontSize: 13, color: AppColors.secondary)),
            ],
          ),
        ],
      ),
    );
  }
}
