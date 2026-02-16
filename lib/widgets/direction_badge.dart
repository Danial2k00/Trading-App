import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DirectionBadge extends StatelessWidget {
  const DirectionBadge({
    super.key,
    required this.direction,
  });

  final String direction;

  @override
  Widget build(BuildContext context) {
    final isBuy = direction.toUpperCase() == 'BUY';
    final color = isBuy ? AppColors.buy : AppColors.sell;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color),
      ),
      child: Text(
        direction.toUpperCase(),
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}
