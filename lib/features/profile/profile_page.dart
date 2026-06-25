import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'feedback_page.dart';
import 'notification_settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的')),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          _ProfileItem(
            icon: Icons.notifications_outlined,
            label: '提醒设置',
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const NotificationSettingsPage(),
            )),
          ),
          _ProfileItem(
            icon: Icons.help_outline,
            label: '帮助',
            onTap: () => _showDialog(context, '帮助', '如需帮助，请访问 simvault.app/help'),
          ),
          _ProfileItem(
            icon: Icons.feedback_outlined,
            label: '反馈',
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const FeedbackPage(),
            )),
          ),
          _ProfileItem(
            icon: Icons.info_outline,
            label: '关于',
            onTap: () => showAboutDialog(
              context: context,
              applicationName: 'SimVault',
              applicationVersion: '1.0.0',
              applicationIcon: Image.asset(
                'assets/icon/SimVault_logo.png',
                width: 48,
                height: 48,
              ),
              children: const [
                Text('SimVault 帮助你统一管理多张SIM卡和手机号码，安全加密存储。'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ProfileItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(label, style: const TextStyle(color: AppColors.title)),
      trailing: const Icon(Icons.chevron_right, color: AppColors.secondary),
      onTap: onTap,
    );
  }
}
