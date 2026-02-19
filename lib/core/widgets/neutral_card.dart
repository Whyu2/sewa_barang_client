import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';

class NeutralCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const NeutralCard({
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.neutral1,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: padding,
      child: child,
    );
  }
}
