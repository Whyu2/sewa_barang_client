import 'package:flutter/material.dart';

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
    switch (variant) {
      case ChipWidgetVariant.primary:
        color = Colors.blue;
        break;
      case ChipWidgetVariant.danger:
        color = Colors.red;
        break;
    }
    return Chip(
      backgroundColor: color,
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

enum ChipWidgetVariant {
  primary,
  danger,
}
