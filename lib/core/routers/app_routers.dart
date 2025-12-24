import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/routers/app_router_refresh_stream.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/repositories/auth_repository.dart';
import 'package:sewa_barang_client/features/auth/blocs/auth/auth_cubit.dart';
import 'package:sewa_barang_client/features/auth/blocs/submit_login/submit_login_bloc.dart';
import 'package:sewa_barang_client/features/auth/blocs/form_login/form_login_bloc.dart';
import 'package:sewa_barang_client/features/auth/page/login_screen.dart';
import 'package:sewa_barang_client/features/home/pages/home_page.dart';
import 'package:sewa_barang_client/features/rent/pages/rent_form_page.dart';

import '../storage/scure_storage_service.dart';

class AppRouter {
  final AuthCubbit authCubbit;
  AppRouter({required this.authCubbit});

  List<GoRoute> _registerRoutes() {
    return [
      GoRoute(
        name: RouterConstans.home,
        path: RouterConstans.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: RouterConstans.rentForm,
        path: RouterConstans.rentForm,
        builder: (BuildContext context, GoRouterState state) {
          return RentFormPage(
            code: state.extra as String,
          );
        },
      ),
      GoRoute(
        name: RouterConstans.login,
        path: RouterConstans.login,
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen(
            formLoginBloc: FormLoginBloc(),
            submitLoginBloc: SubmitLoginBloc(
              getIt<AuthRepository>(),
              getIt<SecureStorageService>(),
            ),
            onSuccess: (context, data) async {
              // getIt<DioClient>().setAccessToken(data.token);
              authCubbit.authenticated(data);
            },
          );
        },
      ),
    ];
  }

  GoRouter router() => GoRouter(
        routes: _registerRoutes(),
        refreshListenable: AppRouterRefreshStream(authCubbit.stream),
        debugLogDiagnostics: true,
        redirect: (context, state) {
          final status = authCubbit.state.status;
          final location = state.matchedLocation;

          debugPrint('status: $status | loc: $location');

          // BELUM LOGIN → cuma boleh di login
          if (status == AuthStatus.unAuthenticated) {
            return location == RouterConstans.login
                ? null
                : RouterConstans.login;
          }

          // SUDAH LOGIN → jangan boleh balik ke login
          if (status == AuthStatus.authenticated &&
              location == RouterConstans.login) {
            return RouterConstans.home;
          }

          // lainnya biarin
          return null;
        },
      );
}
