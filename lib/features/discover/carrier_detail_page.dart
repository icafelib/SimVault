import 'dart:convert';

import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// 运营商信息数据模型
class CarrierInfo {
  final String name;
  final String logo;
  final String country;
  final String network;
  final String website;
  final String description;
  final List<String> advantages;
  final List<String> disadvantages;
  final String? keepAliveRule;

  const CarrierInfo({
    required this.name,
    required this.logo,
    required this.country,
    required this.network,
    required this.website,
    required this.description,
    required this.advantages,
    required this.disadvantages,
    this.keepAliveRule,
  });

  factory CarrierInfo.fromJson(Map<String, dynamic> j) => CarrierInfo(
        name: j['name'] as String,
        logo: j['logo'] as String,
        country: j['country'] as String,
        network: j['network'] as String,
        website: j['website'] as String,
        description: j['description'] as String,
        advantages: List<String>.from(j['advantages'] as List),
        disadvantages: List<String>.from(j['disadvantages'] as List),
        keepAliveRule: j['keepAliveRule'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'logo': logo,
        'country': country,
        'network': network,
        'website': website,
        'description': description,
        'advantages': advantages,
        'disadvantages': disadvantages,
        'keepAliveRule': keepAliveRule,
      };

  /// 将列表序列化为 JSON 字符串
  static String encodeList(List<CarrierInfo> list) =>
      jsonEncode(list.map((c) => c.toJson()).toList());

  /// 从 JSON 字符串反序列化列表
  static List<CarrierInfo> decodeList(String raw) =>
      (jsonDecode(raw) as List).map((e) => CarrierInfo.fromJson(e as Map<String, dynamic>)).toList();
}

const kDefaultCarriers = [
  CarrierInfo(
    name: 'Giffgaff',
    logo: '🇬🇧',
    country: '英国',
    network: 'O2 (UK)',
    website: 'giffgaff.com',
    description: 'Giffgaff 是英国一家基于社区驱动的MVNO运营商，依托O2网络提供服务。以灵活的无合约套餐和良好的性价比著称。',
    advantages: ['无合约套餐', '社区支持', 'O2网络覆盖', '国际漫游', 'SIM卡免费申请'],
    disadvantages: [],
    keepAliveRule: '每180天需有一次余额变动',
  ),
  CarrierInfo(
    name: 'Club Sim',
    logo: '🇭🇰',
    country: '香港',
    network: 'csl',
    website: 'www.clubsim.com.hk',
    description: 'Club Sim 提供跨国使用的SIM卡服务，适合经常出行的用户，支持多个国家和地区的网络连接。',
    advantages: ['多国支持', '无需换卡', '灵活充值', '数据漫游'],
    disadvantages: ['不支持打电话', '仅支持收短信，不支持发短信'],
    keepAliveRule: '每180天需有一次余额变动',
  ),
];

/// 供其他页面使用的全局运营商列表（运行时可被远程数据覆盖）
List<CarrierInfo> kCarriers = List.of(kDefaultCarriers);

/// 运营商详情页，展示运营商优缺点、保号规则等信息
class CarrierDetailPage extends StatelessWidget {
  final CarrierInfo carrier;
  const CarrierDetailPage({super.key, required this.carrier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(carrier.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppColors.brandGradient,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Text(carrier.logo, style: const TextStyle(fontSize: 48)),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(carrier.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    Text(carrier.country,
                        style: const TextStyle(color: Colors.white70)),
                    Text(carrier.network,
                        style: const TextStyle(color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _Section(
            title: '官网',
            child: Row(
              children: [
                const Icon(Icons.link, size: 16, color: AppColors.primary),
                const SizedBox(width: 6),
                Text(carrier.website,
                    style: const TextStyle(color: AppColors.primary, decoration: TextDecoration.underline)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          if (carrier.advantages.isNotEmpty) ...[
            _Section(
              title: '优点',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: carrier.advantages
                    .map((f) => Chip(
                  label: Text(f, style: const TextStyle(fontSize: 13)),
                  backgroundColor: AppColors.primary.withOpacity(0.08),
                  side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
                ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
          ],
          if (carrier.disadvantages.isNotEmpty) ...[
            _Section(
              title: '缺点',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: carrier.disadvantages
                    .map((f) => Chip(
                  label: Text(f, style: const TextStyle(fontSize: 13)),
                  backgroundColor: AppColors.primary.withOpacity(0.08),
                  side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
                ))
                    .toList(),
              ),
            ),
          ],
          if (carrier.keepAliveRule != null) ...[
            const SizedBox(height: 16),
            _Section(
              title: '保号规则',
              child: Row(
                children: [
                  const Icon(Icons.info_outline, size: 16, color: AppColors.primary),
                  const SizedBox(width: 6),
                  Text(carrier.keepAliveRule!, style: const TextStyle(fontSize: 13)),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;
  const _Section({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.title)),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
