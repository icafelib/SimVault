import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _enabled = true;
  String _ringtone = '默认';

  static const _ringtones = ['默认', '提示音1', '提示音2', '无声'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('提醒设置')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('开启保号提醒', style: TextStyle(color: AppColors.title)),
            subtitle: const Text('保号截止日前 7 天提醒', style: TextStyle(color: AppColors.secondary, fontSize: 13)),
            value: _enabled,
            activeColor: AppColors.primary,
            onChanged: (v) => setState(() => _enabled = v),
          ),
          const Divider(height: 1),
          if (_enabled) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text('提醒铃声', style: TextStyle(fontSize: 13, color: AppColors.text)),
            ),
            ..._ringtones.map(
              (r) => RadioListTile<String>(
                title: Text(r),
                value: r,
                groupValue: _ringtone,
                activeColor: AppColors.primary,
                onChanged: (v) => setState(() => _ringtone = v ?? _ringtone),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
