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
    return Stack(children: [
      MobileScanner(
        controller: _controller,
        onDetect: (BarcodeCapture capture) async {
          if (_isNavigating) return;
          final barcode = capture.barcodes.first;
          final code = barcode.rawValue;
          if (code == null) return;
          _isNavigating = true;
          await _controller.stop();
          if (context.mounted) {
            GoRouter.of(context)
                .push(extra: code, RouterConstans.rentForm)
                .then((_) async {
              _isNavigating = false;
              await _controller.start();
            });
          }
        },
      ),
      Center(
          child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(16)))),
      const Positioned(
          bottom: 32,
          left: 16,
          right: 16,
          child: Text('Arahkan QR ke dalam bingkai',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  backgroundColor: Colors.black54))),
      Positioned(
          top: 16,
          right: 16,
          child: IconButton(
              icon: const Icon(Icons.flash_on, color: Colors.white),
              onPressed: () => _controller.toggleTorch())),
    ]);
  }
}
