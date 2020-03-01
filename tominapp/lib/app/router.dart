import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tominapp/app/appBarApp.dart';
import 'package:tominapp/app/user_preference.dart';
import 'package:tominapp/pages/home/card/screens/payment_screen.dart';
import 'package:tominapp/pages/Auth/Auth.dart';
import 'package:tominapp/pages/home/HomePage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final prefs = new UserPreference();
    switch (settings.name) {
      case '/':
        return PageTransition(
          child: prefs.login ? PaymentScreen() : Auth(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBarApp('Ruta no encontrada', false),
                  body: Center(
                      child: Text('No hay ninguna ruta para ${settings.name}')),
                ));
    }
  }
}
