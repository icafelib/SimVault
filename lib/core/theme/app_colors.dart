import 'package:flutter/material.dart';

/// SimVault 品牌色板，与 Design Guideline 保持一致。
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF3B82F6);
  static const Color gradientStart = Color(0xFF6D7CFF);
  static const Color gradientEnd = Color(0xFF3B82F6);

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color danger = Color(0xFFEF4444);

  static const Color title = Color(0xFF0F172A);
  static const Color text = Color(0xFF475569);
  static const Color secondary = Color(0xFF94A3B8);
  static const Color border = Color(0xFFE2E8F0);

  static const Color appBackground = Color(0xFFF8FAFC);
  static const Color card = Color(0xFFFFFFFF);

  static const LinearGradient brandGradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const BoxShadow cardShadow = BoxShadow(
    color: Color(0x0F0F172A), // rgba(15,23,42,0.06)
    blurRadius: 24,
    offset: Offset(0, 4),
  );
}
