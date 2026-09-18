import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';

enum AppButtonVariant { primary, outlined, text, danger }

class AppButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool fullWidth;
  final double borderRadius;

  const AppButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.fullWidth = false,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    );
    const padding = EdgeInsets.symmetric(horizontal: 16, vertical: 14);

    Widget content = Row(
      mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[Icon(icon, size: 20), const SizedBox(width: 8)],
        Text(
          label,
          style: AppTextStyles.poppinsMdSemiBoldBlack.copyWith(
            color:
                variant == AppButtonVariant.primary ||
                    variant == AppButtonVariant.danger
                ? AppColors.white
                : variant == AppButtonVariant.text
                ? AppColors.primaryBase
                : AppColors.neutral6,
          ),
        ),
      ],
    );

    switch (variant) {
      case AppButtonVariant.primary:
        return SizedBox(
          width: fullWidth ? double.infinity : null,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBase,
              foregroundColor: AppColors.white,
              disabledBackgroundColor: AppColors.neutral2,
              disabledForegroundColor: AppColors.white,
              padding: padding,
              shape: shape,
              elevation: 0,
            ),
            child: content,
          ),
        );
      case AppButtonVariant.danger:
        return SizedBox(
          width: fullWidth ? double.infinity : null,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.dangerBase,
              foregroundColor: AppColors.white,
              disabledBackgroundColor: AppColors.neutral2,
              disabledForegroundColor: AppColors.white,
              padding: padding,
              shape: shape,
              elevation: 0,
            ),
            child: content,
          ),
        );
      case AppButtonVariant.outlined:
        return SizedBox(
          width: fullWidth ? double.infinity : null,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.neutral6,
              padding: padding,
              shape: shape,
              side: const BorderSide(color: Colors.grey),
            ),
            child: content,
          ),
        );
      case AppButtonVariant.text:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryBase,
            padding: padding,
            shape: shape,
          ),
          child: content,
        );
    }
  }
}
