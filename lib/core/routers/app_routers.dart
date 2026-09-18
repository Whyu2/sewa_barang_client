import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/routers/app_router_refresh_stream.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/repositories/auth_repository.dart';
import 'package:sewa_barang_client/core/repositories/transaction_repository.dart';
import 'package:sewa_barang_client/core/widgets/app_bar.dart';
import 'package:sewa_barang_client/features/auth/blocs/auth/auth_cubit.dart';
import 'package:sewa_barang_client/features/auth/blocs/submit_login/submit_login_bloc.dart';
import 'package:sewa_barang_client/features/auth/blocs/form_login/form_login_bloc.dart';
import 'package:sewa_barang_client/features/auth/page/login_screen.dart';
import 'package:sewa_barang_client/features/home/pages/home_page.dart';
import 'package:sewa_barang_client/features/rent/pages/rent_form_page.dart';
import 'package:sewa_barang_client/features/rent/pages/rent_page.dart';
import 'package:sewa_barang_client/features/transaction/blocs/get_list_transaction/get_list_transaction_bloc.dart';
import 'package:sewa_barang_client/features/transaction/pages/transaction_detail_page.dart';
import 'package:sewa_barang_client/features/transaction/pages/transaction_page.dart';
import 'package:sewa_barang_client/features/transaction/pages/return_form_page.dart';

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
        name: RouterConstans.scan,
        path: RouterConstans.scan,
        builder: (BuildContext context, GoRouterState state) {
          return const RentPage();
        },
      ),
      GoRoute(name: RouterConstans.transactionDetail, path: '${RouterConstans.transactionDetail}/:id', builder: (c, s) => TransactionDetailPage(id: int.parse(s.pathParameters['id']!))),
      GoRoute(
        name: RouterConstans.transactionList,
        path: RouterConstans.transactionList,
        builder: (BuildContext context, GoRouterState state) {
          void goHome() => GoRouter.of(context).go(RouterConstans.home);
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, _) {
              if (!didPop) goHome();
            },
            child: Scaffold(
              appBar: AppBarBase(
                leading: AppBackButton(onPressed: goHome),
                title: const Text('Riwayat Transaksi'),
              ),
              body: TransactionPage(
                getListTransactionBloc: GetListTransactionBloc(
                  getIt<TransactionRepository>(),
                ),
              ),
            ),
          );
        },
      ),
      GoRoute(name: RouterConstans.returnForm, path: '${RouterConstans.returnForm}/:id', builder: (c, s) => ReturnFormPage(id: int.parse(s.pathParameters['id']!))),
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
