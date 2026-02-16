import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class TimeframeSelector extends StatelessWidget {
  const TimeframeSelector({
    super.key,
    required this.timeframes,
    required this.selected,
    required this.onSelected,
  });

  final List<String> timeframes;
  final String selected;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: timeframes.map((frame) {
        final isSelected = frame == selected;
        return ChoiceChip(
          label: Text(frame),
          selected: isSelected,
          onSelected: (_) => onSelected(frame),
          selectedColor: AppColors.neutralAi.withOpacity(0.15),
          labelStyle: TextStyle(
            color: isSelected ? AppColors.neutralAi : AppColors.textSecondary,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
              color: isSelected ? AppColors.neutralAi : AppColors.divider700,
            ),
          ),
        );
      }).toList(),
    );
  }
}
