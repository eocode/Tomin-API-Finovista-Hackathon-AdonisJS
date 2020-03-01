import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:tominapp/app/api/ApiAuth.dart';
import 'package:tominapp/app/them.dart';

import 'generics.dart';
import 'user_preference.dart';

// ignore: must_be_immutable
class AppBarApp extends StatefulWidget implements PreferredSizeWidget {
  String title;
  bool logout;

  AppBarApp(this.title, this.logout);

  @override
  _AppBarAppState createState() => _AppBarAppState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarAppState extends State<AppBarApp> {
  bool load = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      elevation: 0,
      centerTitle: false,
      title: widget.title == null ? _user() : _title(),
      backgroundColor: AppTheme.white,
      actions: <Widget>[
        widget.logout ? _logout() : _message(context),
      ],
    );
  }

  _closeSession() {
    setState(() {
      load = true;
    });
    ApiAuth().logout().then((status) {
      if (status) {
        setState(() {
          load = false;
        });
        Navigator.pushReplacementNamed(context, '/');
      }
    });
  }

  _logout() {
    return load
        ? loading(true, 0, 20)
        : FlatButton(
            onPressed: _closeSession,
            color: AppTheme.tominLight,
            child: Row(
              children: <Widget>[
                Icon(
                  IcoFontIcons.uiClose,
                  color: AppTheme.darkText.withOpacity(0.7),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Cerrar sesión',
                  style: TextStyle(color: AppTheme.darkText.withOpacity(0.7)),
                ),
              ],
            ),
          );
  }

  _message(BuildContext context) {
    return brand(context);
  }

  _user() {
    final prefs = new UserPreference();
    return GestureDetector(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(6),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                'https://www.pngitem.com/pimgs/m/111-1114675_user-login-person-man-enter-person-login-icon.png',
              ),
              radius: 20,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed('profile');
      },
    );
  }

  _title() {
    return Text(
      widget.title,
      style: AppTheme.appBarNameText,
    );
  }
}
