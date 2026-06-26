import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/theme/app_colors.dart';
import 'carrier_detail_page.dart';

const _kCacheKey = 'carrier_list_cache';
const _kApiUrl = 'https://simvalut.xiaoheicamp.com/querycarrier?type=all';

/// 发现页，展示运营商列表，切换到本页时后台拉取最新数据
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  late List<CarrierInfo> _carriers;

  @override
  void initState() {
    super.initState();
    _carriers = List.of(kCarriers);
    _loadCacheAndFetch();
  }

  Future<void> _loadCacheAndFetch() async {
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString(_kCacheKey);
    if (cached != null) {
      final list = CarrierInfo.decodeList(cached);
      if (list.isNotEmpty && mounted) {
        setState(() {
          _carriers = list;
          kCarriers = list;
        });
      }
    }
    // 后台请求最新数据
    try {
      final resp = await http.get(Uri.parse(_kApiUrl));
      if (resp.statusCode == 200) {
        final body = jsonDecode(resp.body) as Map<String, dynamic>;
        final raw = body['carrier_list'];
        if (raw is List && raw.isNotEmpty) {
          final list = raw
              .map((e) => CarrierInfo.fromJson(e as Map<String, dynamic>))
              .toList();
          await prefs.setString(_kCacheKey, CarrierInfo.encodeList(list));
          if (mounted) {
            setState(() {
              _carriers = list;
              kCarriers = list;
            });
          }
        }
      }
    } catch (_) {
      // 请求失败不做任何处理
    }
  }

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
          ..._carriers.map((c) => _CarrierCard(carrier: c)),
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
