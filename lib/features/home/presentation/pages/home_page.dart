import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_barang_client/core/config/config.dart';
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
          forceMaterialTransparency: false,
          primary: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.scanner),
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
      return const Center(
        child: Text('Sewa Barang'),
      );
    }
    return Center(
        child: TransactionScreen(
      getListTransactionBloc: GetListTransactionBloc(
        getIt<TransactionRepository>(),
      ),
    ));
  }
}
