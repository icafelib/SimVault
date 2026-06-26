import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/providers.dart';
import '../../core/theme/app_colors.dart';
import '../discover/carrier_detail_page.dart';
import '../profile/feedback_page.dart';
import '../profile/notification_settings_page.dart';

/// 添加号码页面
class NewPhonePage extends ConsumerStatefulWidget {
  const NewPhonePage({super.key});
  @override
  ConsumerState<NewPhonePage> createState() => _NewPhonePageState();
}

class _NewPhonePageState extends ConsumerState<NewPhonePage> {
  final _formKey = GlobalKey<FormState>();
  final _numberCtrl = TextEditingController(text: '+');
  final _carrierCtrl = TextEditingController();
  final _noteCtrl = TextEditingController();
  final _periodCtrl = TextEditingController(text: '180');
  final _carrierFocus = FocusNode();

  bool _carrierDropdownOpen = false;
  String _keepAliveMethod = 'sms';
  DateTime _lastActiveAt = DateTime.now();
  late DateTime _nextRemindAt;
  bool _saving = false;
  bool _reminderEnabled = true;

  static const _carrierSuggestions = [
    'Giffgaff', 'Club Sim', '中国移动', '中国联通', '中国电信',
  ];

  static const _methods = {
    'sms': '发短信',
    'recharge': '充值',
    'balance': '余额变动',
    'data': '流量消耗',
    'other': '其他',
  };

  @override
  void initState() {
    super.initState();
    _nextRemindAt = _lastActiveAt.add(const Duration(days: 180));
    _periodCtrl.addListener(_recalcNext);
    _carrierFocus.addListener(() {
      if (!_carrierFocus.hasFocus && _carrierDropdownOpen) {
        setState(() => _carrierDropdownOpen = false);
      }
    });
  }

  /// 根据保号周期重新计算下次保号日期
  void _recalcNext() {
    final days = int.tryParse(_periodCtrl.text.trim()) ?? 0;
    final next = _lastActiveAt.add(Duration(days: days));
    if (next != _nextRemindAt) setState(() => _nextRemindAt = next);
  }

  @override
  void dispose() {
    _numberCtrl.dispose();
    _carrierCtrl.dispose();
    _noteCtrl.dispose();
    _periodCtrl.removeListener(_recalcNext);
    _periodCtrl.dispose();
    _carrierFocus.dispose();
    super.dispose();
  }

  /// 返回当前输入的运营商名对应的已知运营商信息，未匹配则返回 null
  CarrierInfo? get _knownCarrier {
    try {
      return kCarriers.firstWhere(
          (c) => c.name.toLowerCase() == _carrierCtrl.text.trim().toLowerCase());
    } catch (_) {
      return null;
    }
  }

  /// 弹出日期选择器，[isLast] 为 true 时修改最近保号日期，否则修改下次保号日期
  Future<void> _pickDate({required bool isLast}) async {
    final initial = isLast ? _lastActiveAt : _nextRemindAt;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked == null) return;
    setState(() {
      if (isLast) {
        _lastActiveAt = picked;
        final days = int.tryParse(_periodCtrl.text.trim()) ?? 180;
        _nextRemindAt = picked.add(Duration(days: days));
      } else {
        _nextRemindAt = picked;
      }
    });
  }

  /// 校验表单并将号码数据持久化到数据库
  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);
    try {
      final number = _numberCtrl.text.trim();
      final period = int.tryParse(_periodCtrl.text.trim()) ?? 180;
      await ref.read(phoneNumberRepositoryProvider).insert(
            number: number == '+' ? '' : number,
            carrier: _carrierCtrl.text.trim(),
            note: _noteCtrl.text.trim().isEmpty ? null : _noteCtrl.text.trim(),
            lastActiveAt: _lastActiveAt,
            keepAlivePeriodDays: period,
            nextRemindAt: _nextRemindAt,
            keepAliveMethod: _keepAliveMethod,
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('保存成功'), duration: Duration(seconds: 2)),
        );
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('保存失败'),
            duration: const Duration(seconds: 4),
            action: SnackBarAction(
              label: '去反馈',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FeedbackPage()),
              ),
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  /// 从下拉建议列表中选中运营商，并关闭下拉面板
  void _selectCarrier(String value) {
    setState(() {
      _carrierCtrl.text = value;
      _carrierDropdownOpen = false;
    });
    _carrierFocus.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final known = _knownCarrier;
    final hasCarrierText = _carrierCtrl.text.isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: const Text('添加号码')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 运营商：输入框 + 可收起下拉列表
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _carrierCtrl,
                  focusNode: _carrierFocus,
                  decoration: InputDecoration(
                    labelText: '运营商',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (hasCarrierText)
                          IconButton(
                            icon: const Icon(Icons.close, size: 18),
                            onPressed: () {
                              setState(() {
                                _carrierCtrl.clear();
                                _carrierDropdownOpen = false;
                              });
                            },
                          ),
                        Container(
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: IconButton(
                            icon: Icon(
                              _carrierDropdownOpen
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: AppColors.primary,
                            ),
                            onPressed: () {
                              setState(() => _carrierDropdownOpen = !_carrierDropdownOpen);
                              if (_carrierDropdownOpen) _carrierFocus.requestFocus();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  onChanged: (_) => setState(() => _carrierDropdownOpen = true),
                  validator: (v) =>
                      (v ?? '').trim().isEmpty ? '请输入运营商' : null,
                ),
                if (_carrierDropdownOpen) ...[
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.primary.withOpacity(0.06),
                      boxShadow: const [AppColors.cardShadow],
                    ),
                    child: Column(
                      children: _carrierSuggestions
                          .where((c) => _carrierCtrl.text.isEmpty ||
                              c.toLowerCase().contains(
                                  _carrierCtrl.text.toLowerCase()))
                          .map((c) => InkWell(
                                onTap: () => _selectCarrier(c),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  child: Row(
                                    children: [
                                      Text(c,
                                          style: const TextStyle(
                                              color: AppColors.title)),
                                      const Spacer(),
                                      if (_carrierCtrl.text == c)
                                        const Icon(Icons.check,
                                            size: 16,
                                            color: AppColors.primary),
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
                if (known != null) ...[
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => CarrierDetailPage(carrier: known),
                    )),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline,
                            size: 14, color: AppColors.primary),
                        const SizedBox(width: 4),
                        Text('查看 ${known.name} 运营商介绍',
                            style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.primary,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 12),
            // 手机号码
            TextFormField(
              controller: _numberCtrl,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: '手机号码（选填）'),
            ),
            const SizedBox(height: 12),
            // 最近保号日期
            _DateField(
              label: '最近保号日期',
              date: _lastActiveAt,
              onTap: () => _pickDate(isLast: true),
            ),
            const SizedBox(height: 12),
            // 保号周期
            TextFormField(
              controller: _periodCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: '保号周期（天）'),
              validator: (v) {
                final n = int.tryParse((v ?? '').trim());
                if (n == null || n <= 0) return '请输入有效天数';
                return null;
              },
            ),
            const SizedBox(height: 12),
            // 下次保号日期
            _DateField(
              label: '下次保号日期',
              date: _nextRemindAt,
              onTap: () => _pickDate(isLast: false),
            ),
            const SizedBox(height: 12),
            // 保号方式
            DropdownButtonFormField<String>(
              value: _keepAliveMethod,
              decoration: const InputDecoration(labelText: '保号方式'),
              items: _methods.entries
                  .map((e) =>
                      DropdownMenuItem(value: e.key, child: Text(e.value)))
                  .toList(),
              onChanged: (v) =>
                  setState(() => _keepAliveMethod = v ?? _keepAliveMethod),
            ),
            const SizedBox(height: 12),
            // 保号提醒开关
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SwitchListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
                      title: const Text('开启保号提醒',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.title)),
                      subtitle: const Text('保号截止日前 7 天提醒',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.secondary)),
                      value: _reminderEnabled,
                      activeColor: AppColors.primary,
                      onChanged: (v) =>
                          setState(() => _reminderEnabled = v),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings_outlined,
                        color: AppColors.primary, size: 20),
                    tooltip: '提醒方式设置',
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) =>
                                const NotificationSettingsPage())),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // 备注
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

/// 日期选择字段，点击后弹出日期选择器
class _DateField extends StatelessWidget {
  final String label;
  final DateTime date;
  final VoidCallback onTap;

  const _DateField(
      {required this.label, required this.date, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          suffixIcon:
              const Icon(Icons.calendar_today_outlined, size: 18),
        ),
        child: Text(DateFormat('yyyy-MM-dd').format(date),
            style: const TextStyle(color: AppColors.title)),
      ),
    );
  }
}
