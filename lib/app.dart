import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';

class App extends StatelessWidget {
  const App({super.key});

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
