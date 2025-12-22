import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      onDetect: (BarcodeCapture capture) {
        final List<Barcode> barcodes = capture.barcodes;
        for (final barcode in barcodes) {
          final String? code = barcode.rawValue;
          if (code != null) {
            debugPrint('QR VALUE: $code');
          }
        }
      },
    );
  }
}
