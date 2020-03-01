import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app/appBarApp.dart';
import '../../app/generics.dart';
import '../../app/generics.dart';
import '../../app/generics.dart';
import '../../app/them.dart';
import '../../app/them.dart';
import '../../app/them.dart';
import '../../app/them.dart';
import '../../app/them.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: AppTheme.title,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Celular",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: AppTheme.title,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Contraseña",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    return Scaffold(
      backgroundColor: AppTheme.tominAccent,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: MediaQuery.of(context).size.height * .10),
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(
                  decimal: false, signed: false),
              autofocus: false,
              style: TextStyle(fontSize: 20.0, color: AppTheme.secondary.withOpacity(0.8)),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppTheme.smoke,
                hintText: 'Celular',
                contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            TextField(
              autofocus: false,
              style: TextStyle(fontSize: 20, color: AppTheme.secondary.withOpacity(0.8)),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppTheme.smoke,
                hintText: 'Contraseña',
                contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            buttonLightAppPrimary('Ingresar', () {}),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
