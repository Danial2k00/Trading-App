import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SymbolChip extends StatelessWidget {
  const SymbolChip({
    super.key,
    required this.symbol,
    required this.isSelected,
    required this.onTap,
  });

  final String symbol;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(symbol),
      selected: isSelected,
      onSelected: (_) => onTap(),
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
  }
}
