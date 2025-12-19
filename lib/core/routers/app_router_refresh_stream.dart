import 'dart:async';

import 'package:flutter/material.dart';

class AppRouterRefreshStream extends ChangeNotifier {
  AppRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
