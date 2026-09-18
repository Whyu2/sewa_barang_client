import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/widgets/app_bar.dart';
import 'package:sewa_barang_client/features/home/pages/home_dashboard.dart';
import 'package:sewa_barang_client/features/profile/pages/profile_page.dart';

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

  void _goTo(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _currentIndex == 0
            ? const AppBarBase(
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(Icons.home,
                      color: Colors.black, size: 32),
                ),
              )
            : null,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Saya',
            ),
          ],
          onTap: _goTo,
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    if (_currentIndex == 0) {
      return const HomeDashboard();
    }
    return const ProfilePage();
  }
}
