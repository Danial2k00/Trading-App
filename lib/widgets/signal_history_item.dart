import 'package:flutter/material.dart';

import '../theme/app_text.dart';
import 'direction_badge.dart';
import 'status_chip.dart';

class SignalHistoryItem extends StatelessWidget {
  const SignalHistoryItem({
    super.key,
    required this.symbol,
    required this.entry,
    required this.rr,
    required this.status,
    required this.date,
  });

  final String symbol;
  final String entry;
  final String rr;
  final String status;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const DirectionBadge(direction: 'BUY'),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(symbol, style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 4),
                  Text('Entry $entry · RR $rr', style: AppText.tabular()),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                StatusChip(status: status),
                const SizedBox(height: 6),
                Text(date, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
