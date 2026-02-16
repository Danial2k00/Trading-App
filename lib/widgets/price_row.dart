import 'package:flutter/material.dart';

import '../theme/app_text.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.label,
    required this.value,
    this.emphasis = false,
  });

  final String label;
  final String value;
  final bool emphasis;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppText.tabular(
      fontSize: emphasis ? 16 : 14,
      fontWeight: emphasis ? FontWeight.w700 : FontWeight.w600,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(value, style: textStyle),
      ],
    );
  }
}
