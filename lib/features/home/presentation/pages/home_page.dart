import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/config/config.dart';
import 'package:sewa_barang_client/features/auth/presentation/blocs/auth/auth_cubit.dart';
import 'package:sewa_barang_client/features/rent/presentation/pages/rent_page.dart';
import 'package:sewa_barang_client/features/transaction/data/repositories/transaction_repository.dart';
import 'package:sewa_barang_client/features/transaction/presentation/blocs/get_list_transaction/get_list_transaction_bloc.dart';
import 'package:sewa_barang_client/features/transaction/presentation/pages/transaction_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePageContent();
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sewa Gan',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          forceMaterialTransparency: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                getIt<AuthCubbit>().unAuthenticated();
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Sewa Barang',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Transaction',
            ),
          ],
          onTap: (index) => {setState(() => _currentIndex = index)},
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    if (_currentIndex == 0) {
      return const Center(
        child: Text('Home'),
      );
    }
    if (_currentIndex == 1) {
      return const RentPage();
    }
    return Center(
        child: TransactionScreen(
      getListTransactionBloc: GetListTransactionBloc(
        getIt<TransactionRepository>(),
      ),
    ));
  }
}
