import 'package:flutter/material.dart';

import '../widgets/section_header.dart';
import '../widgets/signal_history_item.dart';
import '../widgets/timeframe_selector.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String _selectedTimeframe = '1H';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signal History')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: 'Filters'),
            TimeframeSelector(
              timeframes: const ['15m', '1H', '4H', '1D'],
              selected: _selectedTimeframe,
              onSelected: (value) => setState(() {
                _selectedTimeframe = value;
              }),
            ),
            const SizedBox(height: 12),
            const SectionHeader(title: 'Previous Signals'),
            Expanded(
              child: ListView(
                children: const [
                  SignalHistoryItem(
                    symbol: 'EURUSD',
                    entry: '1.0842',
                    rr: '1:2.4',
                    status: 'Win',
                    date: 'Jan 24',
                  ),
                  SignalHistoryItem(
                    symbol: 'XAUUSD',
                    entry: '2042.5',
                    rr: '1:1.8',
                    status: 'Loss',
                    date: 'Jan 23',
                  ),
                  SignalHistoryItem(
                    symbol: 'BTCUSDT',
                    entry: '41720',
                    rr: '1:2.0',
                    status: 'Expired',
                    date: 'Jan 23',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
