import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:tomin/pages/home/subpage/PageExample.dart';
import 'package:tomin/pages/home/widgets/BottomNavHome.dart';

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
            onTap: () {
              Navigator.of(context).pushNamed('profile');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  jsonDecode(prefs.userDetail)['picture'].toString(),
                ),
              ),
            ),
          ),
          title: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  jsonDecode(prefs.userDetail)['name'].toString(),
                  style: AppTheme.title2,
                ),
                Text(
                  jsonDecode(prefs.userDetail)['commerceEmployees'][0]
                  ['commerceEmployeeRole']['role']
                      .toString(),
                  style: AppTheme.appBarNameText,
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed('profile');
            },
          ),
          backgroundColor: AppTheme.white,
          actions: <Widget>[
            Icon(
              Icons.screen_share,
              color: prefs.online ? AppTheme.active : Colors.grey,
            ),
            Icon(
              IcoFontIcons.runnerAlt1,
              color: prefs.delivery ? AppTheme.active : Colors.grey,
            ),
            Icon(
              FontAwesome.openid,
              color: prefs.open ? AppTheme.active : Colors.grey,
            ),
            brand(context),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(IcoFontIcons.handshakeDeal),
                text: 'Venta',
              ),
              Tab(
                icon: Icon(IcoFontIcons.list),
                text: 'Pedidos',
              ),
              Tab(
                icon: Icon(IcoFontIcons.bus),
                text: 'Surtir',
              ),
              Tab(
                icon: Icon(IcoFontIcons.navigationMenu),
                text: 'Menú',
              ),
            ],
            labelColor: AppTheme.active,
            indicatorColor: AppTheme.active.withOpacity(0.5),
          ),
        ),

        bottomNavigationBar: BottomNavHome(),
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
