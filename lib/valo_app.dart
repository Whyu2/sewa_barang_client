import 'package:flutter/material.dart';
import 'package:valoku_app/core/routers/routers.dart';

class ValoApp extends StatelessWidget {
  const ValoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: "Valoku",
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
