import 'package:cbe_mobile/screens/home_screen.dart';
import 'package:flutter/material.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _pageItem = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.purple,
          size: 30,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Text(
              'EN',
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: Colors.purple,
                size: 30,
              ))
        ],
      ),
      body: _pageItem[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedIconTheme: IconThemeData(size: 35, color: Colors.white),
        unselectedIconTheme: IconThemeData(size: 32, color: Colors.white),
        selectedLabelStyle: TextStyle(fontSize: 14, color: Colors.white),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 40,
        selectedFontSize: 16,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.border_top_sharp,
                size: 20,
              ),
              activeIcon: Icon(
                Icons.border_top_sharp,
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.real_estate_agent_outlined,
                size: 20,
              ),
              activeIcon: Icon(
                Icons.real_estate_agent_outlined,
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                size: 20,
              ),
              activeIcon: Icon(
                Icons.account_balance,
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.refresh,
                size: 20,
              ),
              activeIcon: Icon(
                Icons.refresh,
                size: 20,
              ),
              label: 'Home'),
        ],
        currentIndex: _selectedIndex,
        onTap: (setValue) {
          _selectedIndex = setValue;
          setState(() {});
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.dashboard_customize,
          color: Colors.white,
          size: 35,
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
