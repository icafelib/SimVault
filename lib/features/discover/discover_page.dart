import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'carrier_detail_page.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('发现')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('运营商介绍',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.title)),
          const SizedBox(height: 12),
          ...kCarriers.map((c) => _CarrierCard(carrier: c)),
        ],
      ),
    );
  }
}

class _CarrierCard extends StatelessWidget {
  final CarrierInfo carrier;
  const _CarrierCard({required this.carrier});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(carrier.logo, style: const TextStyle(fontSize: 24)),
          ),
        ),
        title: Text(carrier.name,
            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.title)),
        subtitle: Text('${carrier.country} · ${carrier.network}',
            style: const TextStyle(color: AppColors.secondary, fontSize: 13)),
        trailing: const Icon(Icons.chevron_right, color: AppColors.secondary),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => CarrierDetailPage(carrier: carrier),
        )),
      ),
    );
  }
}
