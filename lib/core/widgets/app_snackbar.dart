import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';

enum AppSnackType { success, error }

OverlayEntry? _currentEntry;

void showTopSnackBar(
  BuildContext context, {
  required String message,
  required AppSnackType type,
  Duration duration = const Duration(seconds: 3),
}) {
  _currentEntry?.remove();
  _currentEntry = null;

  late OverlayEntry entry;
  entry = OverlayEntry(
    builder: (ctx) => _TopSnackBar(
      message: message,
      type: type,
      onDismiss: () {
        entry.remove();
        if (_currentEntry == entry) _currentEntry = null;
      },
    ),
  );
  _currentEntry = entry;
  Overlay.of(context).insert(entry);

  Future.delayed(duration, () {
    entry.remove();
    if (_currentEntry == entry) _currentEntry = null;
  });
}

void showTopSuccess(BuildContext context, String message) =>
    showTopSnackBar(context, message: message, type: AppSnackType.success);

void showTopError(BuildContext context, String message) =>
    showTopSnackBar(context, message: message, type: AppSnackType.error);

class _TopSnackBar extends StatefulWidget {
  final String message;
  final AppSnackType type;
  final VoidCallback onDismiss;

  const _TopSnackBar({
    required this.message,
    required this.type,
    required this.onDismiss,
  });

  @override
  State<_TopSnackBar> createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<_TopSnackBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slide;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _slide = Tween<Offset>(
      begin: const Offset(0, -1.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _fade = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSuccess = widget.type == AppSnackType.success;
    final accent = isSuccess ? AppColors.successBase : AppColors.dangerBase;
    final softBg = isSuccess ? AppColors.success5 : AppColors.danger5;
    final icon = isSuccess ? Icons.check_circle : Icons.error;

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: SlideTransition(
            position: _slide,
            child: FadeTransition(
              opacity: _fade,
              child: GestureDetector(
                onTap: widget.onDismiss,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: accent, width: 1.2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.15),
                          blurRadius: 16,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: softBg,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(icon, color: accent, size: 22),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                isSuccess ? 'Berhasil' : 'Gagal',
                                style: AppTextStyles.poppinsSmSemiBoldBlack,
                              ),
                              const SizedBox(height: 2),
                              Text(
                                widget.message,
                                style:
                                    AppTextStyles.poppinsSmRegularNeutral4,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),
                        InkWell(
                          onTap: widget.onDismiss,
                          child: const Icon(Icons.close,
                              size: 18, color: AppColors.neutral3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
