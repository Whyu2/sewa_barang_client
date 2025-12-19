import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatefulWidget {
  /// The hint text.
  final String? hintText;

  /// The error text if any.
  final String? errorText;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final bool obscureText;

  final bool enabled;

  final String? label;

  final TextEditingController? controller;

  final String? initialValue;

  final void Function(String)? onChanged;

  final int maxLines;

  final EdgeInsetsGeometry? padding;

  final TextStyle? textStyle;

  final void Function()? onTap;

  final FocusNode? focusNode;

  final MouseCursor? mouseCursor;

  final bool readOnly;

  final double? borderRadius;

  final bool searchMode;

  final List<TextInputFormatter>? textInputFormatters;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;

  const TextInputField({
    super.key,
    this.hintText,
    this.errorText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.label,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.maxLines = 1,
    this.padding,
    this.textStyle,
    this.focusNode,
    this.mouseCursor,
    this.onTap,
    this.readOnly = false,
    this.borderRadius,
    this.searchMode = false,
    this.textInputFormatters,
    this.keyboardType,
    this.textAlign = TextAlign.left,
  }) : assert(!(maxLines != 1 && obscureText));

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode != null) {
      _focusNode = widget.focusNode!;
    } else {
      _focusNode = FocusNode();
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      style: widget.textStyle,
      initialValue: widget.initialValue,
      controller: widget.controller,
      enabled: widget.enabled,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      onTap: widget.onTap,
      mouseCursor: widget.mouseCursor,
      readOnly: widget.readOnly,
      inputFormatters: widget.textInputFormatters,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: widget.label,
        errorText: widget.errorText,
      ),
      textAlign: widget.textAlign!,
    );
  }
}
