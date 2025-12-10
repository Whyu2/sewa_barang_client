import 'package:flutter/cupertino.dart';
import 'package:valoku_app/core/config/flavors.dart';

import 'package:valoku_app/valo_app.dart';

import 'core/config/config.dart';

Future<void> mainInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(environment: FlavorConfig.env);
  runApp(
    const ValoApp(),
  );
}
