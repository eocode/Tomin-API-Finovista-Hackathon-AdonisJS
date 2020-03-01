import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../../../app/them.dart';

class BottomNavHome extends StatefulWidget {
  @override
  _BottomNavHomeState createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome> {
  int _selectedIndex = 0;

  void _onItemTapped(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/');
        break;
      case 2:
        Navigator.pushNamed(context, '/');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.tominPrimary,
      padding: EdgeInsets.only(top: 20),
      child: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IcoFontIcons.search2),
            title: Text('Búscar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IcoFontIcons.uiMessaging),
            title: Text('Mensajes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IcoFontIcons.usersSocial),
            title: Text('Comunidad'),
          ),
        ],
        selectedItemColor: AppTheme.secondary,
        backgroundColor: AppTheme.tominLight,
        iconSize: 20,
        selectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTapped(context, index),
      ),
    );
  }
}
