import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:tominapp/pages/home/subpage/PageExample.dart';

import '../../app/generics.dart';
import '../../app/them.dart';
import '../../app/user_preference.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final prefs = new UserPreference();

  @override
  void initState() {
    super.initState();
    //Initializing search delegate with sorted list of English words
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: GestureDetector(
//            onTap: () {
//              Navigator.of(context).pushNamed('profile');
//            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://www.pngitem.com/pimgs/m/111-1114675_user-login-person-man-enter-person-login-icon.png',
                ),
              ),
            ),
          ),
          title: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed('profile');
            },
          ),
          backgroundColor: AppTheme.white,
          actions: <Widget>[
            brand(context),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(IcoFontIcons.handshakeDeal),
                text: 'Codi',
              ),
              Tab(
                icon: Icon(IcoFontIcons.list),
                text: 'Tarjetas',
              ),
              Tab(
                icon: Icon(IcoFontIcons.bus),
                text: 'Cuentas',
              ),
              Tab(
                icon: Icon(IcoFontIcons.navigationMenu),
                text: 'Sitios',
              ),
            ],
            labelColor: AppTheme.active,
            indicatorColor: AppTheme.active.withOpacity(0.5),
          ),
        ),
//        bottomNavigationBar: BottomNavHome(),
        body: TabBarView(
          children: [
            PageExample(),
            PageExample(),
            PageExample(),
            PageExample(),
          ],
        ),
      ),
    );
  }
}
