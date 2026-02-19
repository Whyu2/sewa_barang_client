import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';

class OutlinedCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const OutlinedCard({
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.neutral1,
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: AppColors.neutral1,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      padding: padding,
      child: child,
    );
  }
}
