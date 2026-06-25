import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class CarrierInfo {
  final String name;
  final String logo;
  final String country;
  final String network;
  final String website;
  final String description;
  final List<String> features;

  const CarrierInfo({
    required this.name,
    required this.logo,
    required this.country,
    required this.network,
    required this.website,
    required this.description,
    required this.features,
  });
}

const kCarriers = [
  CarrierInfo(
    name: 'Giffgaff',
    logo: '🇬🇧',
    country: '英国',
    network: 'O2 (UK)',
    website: 'giffgaff.com',
    description: 'Giffgaff 是英国一家基于社区驱动的MVNO运营商，依托O2网络提供服务。以灵活的无合约套餐和良好的性价比著称。',
    features: ['无合约套餐', '社区支持', 'O2网络覆盖', '国际漫游', 'SIM卡免费申请'],
  ),
  CarrierInfo(
    name: 'ClubSim',
    logo: '🌐',
    country: '多国',
    network: '多运营商',
    website: 'clubsim.com',
    description: 'ClubSim 提供跨国使用的SIM卡服务，适合经常出行的用户，支持多个国家和地区的网络连接。',
    features: ['多国支持', '无需换卡', '灵活充值', '数据漫游'],
  ),
];

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
          const SizedBox(height: 20),
          _Section(title: '简介', child: Text(carrier.description, style: const TextStyle(color: AppColors.text, height: 1.6))),
          const SizedBox(height: 16),
          _Section(
            title: '特色功能',
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: carrier.features
                  .map((f) => Chip(
                        label: Text(f, style: const TextStyle(fontSize: 13)),
                        backgroundColor: AppColors.primary.withOpacity(0.08),
                        side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
                      ))
                  .toList(),
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
