import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:tominapp/pages/home/challenge0/screens/payment_screen.dart';

import 'app/router.dart';
import 'app/them.dart';
import 'app/user_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.black,
    systemNavigationBarDividerColor: Colors.grey,
    systemNavigationBarIconBrightness: Brightness.light,
  ));

  final prefs = new UserPreference();
  await prefs.initPrefs();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new TApp()));
}

class TApp extends StatelessWidget {
  final prefs = new UserPreference();

  @override
  Widget build(BuildContext context) {
//    builder: (_) => ThemeChanger(ThemeList().getTheme(prefs.theme)
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: null,
          builder: (_) => ThemeChanger(ThemeList().getTheme(prefs.theme)),
        )
      ],
      child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new UserPreference();
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'MX'), // Spanish
      ],
      theme: theme.getTheme(),
      onGenerateRoute: Router.generateRoute,
      initialRoute: prefs.login ? '/' : '/',
      title: 'Tomin',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Flutter Dribbble Challenge"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text("Challenge$index"),
              onPressed: () {
                Navigator.of(context).pushNamed("/challenge$index");
              },
            ),
          );
        },
        itemCount: 4,
        shrinkWrap: true,
      ),
    );
    // return Scaffold();
  }
}
