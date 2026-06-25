import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/home_shell.dart';
import 'core/theme/app_theme.dart';
import 'features/numbers/new_phone_page.dart';
import 'features/numbers/phone_detail_page.dart';
// discover and profile are loaded transitively via home_shell.dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const ProviderScope(child: SimVaultApp()));
}

class SimVaultApp extends StatelessWidget {
  const SimVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimVault',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CN'),
        Locale('en', 'US'),
      ],
      locale: const Locale('zh', 'CN'),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomeShell());
          case '/numbers/new':
            return MaterialPageRoute(builder: (_) => const NewPhonePage());
          case '/numbers/detail':
            final id = settings.arguments as String;
            return MaterialPageRoute(
                builder: (_) => PhoneDetailPage(id: id));
        }
        return null;
      },
      initialRoute: '/',
    );
  }
}
