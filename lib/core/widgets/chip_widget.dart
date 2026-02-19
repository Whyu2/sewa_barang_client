import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';

class ChipWidget extends StatelessWidget {
  final ChipWidgetVariant variant;
  final String label;

  const ChipWidget({
    super.key,
    required this.variant,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    TextStyle style = AppTextStyles.poppinsSmRegularBlack;
    switch (variant) {
      case ChipWidgetVariant.primary:
        color = AppColors.primary2;
        style = AppTextStyles.poppinsSmSemiBoldPrimary;
        break;
      case ChipWidgetVariant.danger:
        color = AppColors.danger4;
        style = AppTextStyles.poppinsSmSemiBoldDanger;
        break;
    }
    return Chip(
      backgroundColor: color,
      label: Text(
        label,
        style: style,
      ),
    );
  }
}

enum ChipWidgetVariant {
  primary,
  danger,
}
