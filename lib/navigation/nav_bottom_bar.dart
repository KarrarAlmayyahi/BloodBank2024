import 'package:emdad/constants/constants.dart';
import 'package:emdad/view/pages/homescreen.dart';
import 'package:emdad/view/pages/profile/profile.dart';
import 'package:flutter/material.dart';

class NavBottomBar extends StatefulWidget {
  const NavBottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBottomBarState createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<NavBottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Search Page'),
    Profile(),
    Text('setting Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: primaryColor),
              label: 'الرئيسية',
              backgroundColor: tertiaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: primaryColor),
              label: 'البحث',
              backgroundColor: tertiaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: primaryColor),
              label: 'الملف الشخصي',
              backgroundColor: tertiaryColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: primaryColor,
              ),
              label: ' الإعدادات ',
              backgroundColor: tertiaryColor)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        selectedFontSize: Checkbox.width,
        selectedLabelStyle:
            const TextStyle(fontFamily: 'ManchetteFineSemiBold'),
        onTap: _onItemTapped,
      ),
    );
  }
}
