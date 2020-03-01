import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tominapp/app/api/ApiAuth.dart';

import '../../app/generics.dart';
import '../../app/them.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  String phone = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.tominAccent,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: MediaQuery.of(context).size.height * .10),
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            TextFormField(
              initialValue: phone,
              keyboardType: TextInputType.numberWithOptions(
                  decimal: false, signed: false),
              autofocus: false,
              onChanged: (value) {
                setState(() {
                  phone = value.toString();
                });
              },
              style: TextStyle(
                  fontSize: 20.0, color: AppTheme.secondary.withOpacity(0.8)),
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
              onChanged: (value) {
                setState(() {
                  password = value.toString();
                });
              },
              autofocus: false,
              style: TextStyle(
                  fontSize: 20, color: AppTheme.secondary.withOpacity(0.8)),
              obscureText: true,
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
            buttonLightAppPrimary('Ingresar', () {
              print(phone);
              ApiAuth().login(phone, password).then((r) {

                if(r){
                  Navigator.of(context).pushNamed('/');
                }

              });
            }),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
