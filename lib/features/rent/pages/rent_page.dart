import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';

class RentPage extends StatelessWidget {
  const RentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RentPageContent();
  }
}

class RentPageContent extends StatefulWidget {
  const RentPageContent({super.key});

  @override
  State<RentPageContent> createState() => _RentPageContentState();
}

class _RentPageContentState extends State<RentPageContent> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
    facing: CameraFacing.back,
  );

  bool _isNavigating = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      controller: _controller,
      onDetect: (BarcodeCapture capture) async {
        if (_isNavigating) return;

        final barcode = capture.barcodes.first;
        final code = barcode.rawValue;

        if (code == null) return;
        _isNavigating = true;
        await _controller.stop();

        if (context.mounted) {
          GoRouter.of(context).push(
            extra: code,
            RouterConstans.rentForm,
          );
        }
      },
    );
  }
}
