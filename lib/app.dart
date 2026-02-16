import 'package:flutter/material.dart';

import 'screens/dashboard_screen.dart';
import 'theme/app_theme.dart';

class TradingAssistantApp extends StatelessWidget {
  const TradingAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Trading Assistant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: const DashboardScreen(),
    );
  }
}
