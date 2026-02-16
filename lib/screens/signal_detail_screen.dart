import 'package:flutter/material.dart';

import '../theme/app_text.dart';
import '../widgets/confidence_bar.dart';
import '../widgets/direction_badge.dart';
import '../widgets/price_row.dart';

class SignalDetailScreen extends StatelessWidget {
  const SignalDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signal Details')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EURUSD · 1H · 09:12', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 12),
            Row(
              children: [
                const DirectionBadge(direction: 'BUY'),
                const SizedBox(width: 12),
                Text('Entry', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: 6),
            Text('1.0842', style: AppText.tabular(fontSize: 24)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PriceRow(label: 'Stop Loss', value: '1.0811'),
                PriceRow(label: 'TP1', value: '1.0890'),
                PriceRow(label: 'TP2', value: '1.0928'),
              ],
            ),
            const SizedBox(height: 16),
            const ConfidenceBar(percent: 78),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.timer_outlined, size: 16),
                const SizedBox(width: 6),
                Text('Valid for 32:18', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Skip trade if spread > 2.0 pips or price moves beyond 1.0850.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
