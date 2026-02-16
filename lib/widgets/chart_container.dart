import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.base850,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider700),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Candlestick Chart',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Positioned(
            right: 12,
            top: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.surface800,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.divider700),
              ),
              child: Text(
                '1.0842',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.neutralAi.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.neutralAi),
              ),
              child: Text(
                'BOS',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.neutralAi,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
