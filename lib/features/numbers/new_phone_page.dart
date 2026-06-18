import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../core/theme/app_colors.dart';

class NewPhonePage extends ConsumerStatefulWidget {
  const NewPhonePage({super.key});

  @override
  ConsumerState<NewPhonePage> createState() => _NewPhonePageState();
}

class _NewPhonePageState extends ConsumerState<NewPhonePage> {
  final _formKey = GlobalKey<FormState>();
  final _numberCtrl = TextEditingController();
  final _iccidCtrl = TextEditingController();
  final _noteCtrl = TextEditingController();
  String _carrier = '中国移动';
  String _purpose = 'primary';
  bool _saving = false;

  static const _carriers = ['中国移动', '中国联通', '中国电信', '中国广电', '其他'];
  static const _purposes = {
    'primary': '主力',
    'work': '工作',
    'backup': '备用',
    'iot': '物联网',
  };

  @override
  void dispose() {
    _numberCtrl.dispose();
    _iccidCtrl.dispose();
    _noteCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);
    try {
      await ref.read(phoneNumberRepositoryProvider).insert(
            number: _numberCtrl.text.trim(),
            carrier: _carrier,
            purpose: _purpose,
            iccid: _iccidCtrl.text.trim().isEmpty ? null : _iccidCtrl.text.trim(),
            note: _noteCtrl.text.trim().isEmpty ? null : _noteCtrl.text.trim(),
          );
      if (mounted) Navigator.of(context).pop();
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('添加号码')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _numberCtrl,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: '手机号码'),
              validator: (v) {
                final s = (v ?? '').trim();
                if (s.isEmpty) return '请输入手机号';
                if (!RegExp(r'^\d{6,15}$').hasMatch(s)) return '号码格式不正确';
                return null;
              },
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _carrier,
              decoration: const InputDecoration(labelText: '运营商'),
              items: _carriers
                  .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                  .toList(),
              onChanged: (v) => setState(() => _carrier = v ?? _carrier),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _purpose,
              decoration: const InputDecoration(labelText: '用途'),
              items: _purposes.entries
                  .map((e) =>
                      DropdownMenuItem(value: e.key, child: Text(e.value)))
                  .toList(),
              onChanged: (v) => setState(() => _purpose = v ?? _purpose),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _iccidCtrl,
              decoration: const InputDecoration(labelText: 'ICCID（选填）'),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _noteCtrl,
              maxLines: 3,
              decoration: const InputDecoration(labelText: '备注（选填）'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _saving ? null : _save,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: const Size.fromHeight(48),
              ),
              child: _saving
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : const Text('保存'),
            ),
          ],
        ),
      ),
    );
  }
}
