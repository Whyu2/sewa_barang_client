import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/features/auth/blocs/auth/auth_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter appRouter;
  late final GoRouter router;
  late AuthCubbit authCubbit;

  @override
  void initState() {
    var authCubbit = getIt<AuthCubbit>();
    authCubbit.checkAuth();
    appRouter = AppRouter(authCubbit: authCubbit);
    router = appRouter.router();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: Colors.black.withValues(alpha: .4),
      useDefaultLoading: false,
      overlayWidget: _buildLoaderWidget(),
      child: _buildRouter(),
    );
  }

  Widget _buildLoaderWidget() {
    return Center(
      child: Container(
        height: 80,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildRouter() {
    return MaterialApp.router(
      title: "Sewa Barang Client",
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
