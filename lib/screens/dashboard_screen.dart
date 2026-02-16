import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/ai_signal_card.dart';
import '../widgets/chart_container.dart';
import '../widgets/chat_panel.dart';
import '../widgets/timeframe_selector.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String _selectedTimeframe = '1H';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EURUSD'),
        actions: const [
          Icon(Icons.notifications_none),
          SizedBox(width: 12),
          CircleAvatar(radius: 14, backgroundColor: AppColors.surface750),
          SizedBox(width: 12),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TimeframeSelector(
                timeframes: const ['15m', '1H', '4H', '1D'],
                selected: _selectedTimeframe,
                onSelected: (value) => setState(() {
                  _selectedTimeframe = value;
                }),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 280, child: ChartContainer()),
                  SizedBox(height: 12),
                  AiSignalCard(),
                  SizedBox(height: 120),
                ],
              ),
            ),
          ),
          const ChatPanel(),
        ],
      ),
    );
  }
}
