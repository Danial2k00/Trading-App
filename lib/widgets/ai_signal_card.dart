import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text.dart';
import 'confidence_bar.dart';
import 'direction_badge.dart';
import 'price_row.dart';

class AiSignalCard extends StatelessWidget {
  const AiSignalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const DirectionBadge(direction: 'BUY'),
                const SizedBox(width: 12),
                Text(
                  'EURUSD · 1H',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                Text(
                  'RR 1:2.4',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text('Entry', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 4),
            Text('1.0842', style: AppText.tabular(fontSize: 20)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PriceRow(label: 'Stop Loss', value: '1.0811'),
                PriceRow(label: 'TP1', value: '1.0890'),
                PriceRow(label: 'TP2', value: '1.0928'),
              ],
            ),
            const SizedBox(height: 12),
            const ConfidenceBar(percent: 78),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.timer_outlined, size: 16),
                const SizedBox(width: 6),
                Text(
                  'Valid for 32:18',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Skip trade if spread > 2.0 pips or price moves beyond 1.0850.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textMuted,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
