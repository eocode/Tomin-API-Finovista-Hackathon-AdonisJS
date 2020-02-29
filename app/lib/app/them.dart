import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}

class AppTheme {
  AppTheme._();

  static const Color tomin = Color.fromRGBO(255, 196, 0, 1);
  static const Color tominAccent = Color(0xff199D32);
  static const Color tominPrimary = Color(0xff199D32);

//  static const Color tominAccent = Color(0xffFF9600);
  static const Color tominLight = Color(0xff199D32);
  static const Color accent = Color.fromRGBO(255, 180, 0, 1);
  static const Color secondary = Color(0xFF213333);
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color active = Color.fromRGBO(0, 120, 17, 1);
  static const Color darkText = Colors.black87;

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color temp = Color.fromRGBO(71, 66, 48, 1);
  static const Color grey = Color(0xFF3A5160);
  static const Color smoke = Color(0xFFEDE4DC);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Roboto';
  static const String fonttomin = 'Roboto';

  static const TextStyle lightButtonText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppTheme.darkText,
  );

  static const TextStyle appBarNameText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black54,
  );

  static const TextStyle homecomming = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.orange,
  );

  static TextStyle tominBrand() {
    return TextStyle(
      color: AppTheme.secondary,
      fontWeight: FontWeight.bold,
      fontFamily: fonttomin,
      fontSize: 18,
    );
  }

  static TextStyle onlineCommerce(bool online) {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: online ? AppTheme.active : AppTheme.secondary);
  }

  static TextStyle onlineCommerceIndicators(bool online) {
    return TextStyle(
        color: online ? AppTheme.active : AppTheme.secondary,
        fontWeight: FontWeight.w600,
        fontSize: 14);
  }

  static TextStyle onlineCommerceActions(bool online) {
    return TextStyle(
        color: online ? AppTheme.active : AppTheme.secondary,
        fontWeight: FontWeight.w600,
        fontSize: 16);
  }

  static TextStyle tominFont(
      double size, bool bold, bool obscure, bool light) {
    return TextStyle(
      fontFamily: fonttomin,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontSize: size,
      color: (light
          ? (obscure ? AppTheme.tominAccent : AppTheme.tomin)
          : (obscure ? Colors.black87 : Colors.black54)),
    );
  }

  static const TextStyle proxim = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.orange,
  );

  static const TextStyle appBarTitleText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: darkText,
  );

  static const TextStyle darkButtonText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: white,
  );

  static const TextStyle sale = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    letterSpacing: 0.18,
    color: active,
  );

  static const TextStyle saleInventory = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.18,
    color: active,
  );

  static const TextStyle saleCash = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.18,
    color: Colors.deepOrange,
  );

  static const TextStyle textCharge = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.18,
    color: AppTheme.nearlyBlack,
  );

  static const TextStyle textCharge2 = TextStyle(
    fontFamily: AppTheme.fontName,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.0,
    color: AppTheme.nearlyBlack,
  );

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 0.18,
    color: secondary,
  );

  static const TextStyle title2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: secondary,
  );

  static const TextStyle title2light = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: white,
  );

  static const TextStyle warning = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: tominAccent,
  );

  static const TextStyle subTitle = TextStyle(
      fontSize: 16,
      color: Colors.black54,
      fontWeight: FontWeight.w500
  );

  static const TextStyle paragraph = TextStyle(
      fontSize: 15,
      color: secondary,
      fontWeight: FontWeight.w300
  );
}

class ThemeList {
  ThemeData getTheme(String theme) {
    switch (theme) {
      case 'lightTheme':
        return lightTheme();
      case 'darkTheme':
        return darkTheme();
      default:
        return lightTheme();
    }
  }

  ThemeData lightTheme() {
    return ThemeData(
      fontFamily: AppTheme.fontName,
      primarySwatch: Colors.amber,
      brightness: Brightness.light,
      primaryColor: AppTheme.white,
      primaryColorBrightness: Brightness.light,
      primaryColorLight: Color(0xffffecb3),
      primaryColorDark: AppTheme.tominAccent,
      accentColor: AppTheme.tominAccent,
      accentColorBrightness: Brightness.light,
      canvasColor: Color(0xfffafafa),
      scaffoldBackgroundColor: AppTheme.white,
      bottomAppBarColor: Color(0xffffffff),
      cardColor: Color(0xffffffff),
      dividerColor: Color(0x1f000000),
      highlightColor: Color(0x66bcbcbc),
      splashColor: Color(0x66c8c8c8),
      selectedRowColor: Color(0xfff5f5f5),
      unselectedWidgetColor: Color(0x8a000000),
      disabledColor: Color(0x61000000),
      buttonColor: Color(0xffe0e0e0),
      toggleableActiveColor: AppTheme.tominAccent,
      secondaryHeaderColor: Color(0xfffff8e1),
      textSelectionColor: Color(0xffffe082),
      cursorColor: Color(0xff4285f4),
      textSelectionHandleColor: Color(0xffffd54f),
      backgroundColor: AppTheme.white,
      dialogBackgroundColor: AppTheme.white,
      indicatorColor: AppTheme.tominAccent,
      hintColor: Color(0x8a000000),
      errorColor: Color(0xffd32f2f),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        minWidth: 88,
        height: 36,
        padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppTheme.tominAccent,
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        alignedDropdown: false,
        buttonColor: Color(0xffe0e0e0),
        disabledColor: Color(0x61000000),
        highlightColor: Color(0x29000000),
        splashColor: Color(0x1f000000),
        focusColor: Color(0x1f000000),
        hoverColor: Color(0x0a000000),
        colorScheme: ColorScheme(
          primary: AppTheme.tominAccent,
          primaryVariant: AppTheme.tominAccent,
          secondary: AppTheme.tominAccent,
          secondaryVariant: AppTheme.tominAccent,
          surface: Color(0xffffffff),
          background: Color(0xffffe082),
          error: Color(0xffd32f2f),
          onPrimary: Color(0xff000000),
          onSecondary: Color(0xff000000),
          onSurface: Color(0xff000000),
          onBackground: Color(0xff000000),
          onError: Color(0xffffffff),
          brightness: Brightness.light,
        ),
      ),
      textTheme: TextTheme(
        display4: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      primaryTextTheme: TextTheme(
        display4: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      accentTextTheme: TextTheme(
        display4: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        helperStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        hintStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        errorStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
//        errorMaxLines: null,
        hasFloatingPlaceholder: true,
        isDense: false,
        contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
        isCollapsed: false,
        prefixStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        suffixStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        counterStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        filled: false,
        fillColor: Color(0x00000000),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.tominAccent,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      iconTheme: IconThemeData(
        color: Color(0xdd000000),
        opacity: 1,
        size: 24,
      ),
      primaryIconTheme: IconThemeData(
        color: Color(0xff000000),
        opacity: 1,
        size: 24,
      ),
      accentIconTheme: IconThemeData(
        color: Color(0xff000000),
        opacity: 1,
        size: 24,
      ),
      sliderTheme: SliderThemeData(
//        activeTrackColor: null,
//        inactiveTrackColor: null,
//        disabledActiveTrackColor: null,
//        disabledInactiveTrackColor: null,
//        activeTickMarkColor: null,
//        inactiveTickMarkColor: null,
//        disabledActiveTickMarkColor: null,
//        disabledInactiveTickMarkColor: null,
//        thumbColor: null,
//        disabledThumbColor: null,
//        thumbShape: null(),
//        overlayColor: null,
//        valueIndicatorColor: null,
//        valueIndicatorShape: null(),
//        showValueIndicator: null,
        valueIndicatorTextStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Color(0xdd000000),
        unselectedLabelColor: Color(0xb2000000),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Color(0x1f000000),
        brightness: Brightness.light,
        deleteIconColor: Color(0xde000000),
        disabledColor: Color(0x0c000000),
        labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
        labelStyle: TextStyle(
          color: Color(0xde000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
          color: Color(0x3d000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: Color(0x3dffc107),
        selectedColor: Color(0x3d000000),
        shape: StadiumBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            )),
      ),
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          )),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      primarySwatch: MaterialColor(4280361249, {
        50: Color(0xfff2f2f2),
        100: Color(0xffe6e6e6),
        200: Color(0xffcccccc),
        300: Color(0xffb3b3b3),
        400: Color(0xff999999),
        500: Color(0xff808080),
        600: Color(0xff666666),
        700: Color(0xff4d4d4d),
        800: Color(0xff333333),
        900: Color(0xff191919)
      }),
      brightness: Brightness.dark,
      primaryColor: AppTheme.tominAccent,
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: AppTheme.tominAccent,
      primaryColorDark: AppTheme.tominAccent,
      accentColor: AppTheme.tominAccent,
      accentColorBrightness: Brightness.light,
      canvasColor: Color(0xff303030),
      scaffoldBackgroundColor: Color(0xff303030),
      bottomAppBarColor: Color(0xff424242),
      cardColor: Color(0xff424242),
      dividerColor: Color(0x1fffffff),
      highlightColor: Color(0x40cccccc),
      splashColor: Color(0x40cccccc),
      selectedRowColor: AppTheme.tominAccent,
      unselectedWidgetColor: Color(0xb3ffffff),
      disabledColor: Color(0x62ffffff),
      buttonColor: AppTheme.tominAccent,
      toggleableActiveColor: AppTheme.tominAccent,
      secondaryHeaderColor: Color(0xff616161),
      textSelectionColor: AppTheme.tominAccent,
      cursorColor: Color(0xff4285f4),
      textSelectionHandleColor: AppTheme.tominAccent,
      backgroundColor: Color(0xff616161),
      dialogBackgroundColor: Color(0xff424242),
      indicatorColor: AppTheme.tominAccent,
      hintColor: Color(0x80ffffff),
      errorColor: Color(0xffd32f2f),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        minWidth: 88,
        height: 36,
        padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        alignedDropdown: false,
        buttonColor: AppTheme.tominAccent,
        disabledColor: Color(0x61ffffff),
        highlightColor: Color(0x29ffffff),
        splashColor: Color(0x1fffffff),
        focusColor: Color(0x1fffffff),
        hoverColor: Color(0x0affffff),
        colorScheme: ColorScheme(
          primary: AppTheme.tominAccent,
          primaryVariant: Color(0xff000000),
          secondary: AppTheme.tominAccent,
          secondaryVariant: AppTheme.tominAccent,
          surface: Color(0xff424242),
          background: Color(0xff616161),
          error: Color(0xffd32f2f),
          onPrimary: Color(0xff000000),
          onSecondary: Color(0xff000000),
          onSurface: AppTheme.tominAccent,
          onBackground: Color(0xff000000),
          onError: Color(0xff000000),
          brightness: Brightness.dark,
        ),
      ),
      textTheme: TextTheme(
        display4: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      primaryTextTheme: TextTheme(
        display4: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      accentTextTheme: TextTheme(
        display4: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display3: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display2: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        display1: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        headline: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        title: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subhead: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body2: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        body1: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        caption: TextStyle(
          color: Color(0x8a000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        subtitle: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        overline: TextStyle(
          color: Color(0xff000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        helperStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        hintStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        errorStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
//        errorMaxLines: null,
        hasFloatingPlaceholder: true,
        isDense: false,
        contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
//        isCollapsed: false,
        prefixStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        suffixStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        counterStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        filled: false,
        fillColor: Color(0x00000000),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff000000),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      iconTheme: IconThemeData(
        color: AppTheme.tominAccent,
        opacity: 1,
        size: 24,
      ),
      primaryIconTheme: IconThemeData(
        color: AppTheme.tominAccent,
        opacity: 1,
        size: 24,
      ),
      accentIconTheme: IconThemeData(
        color: Color(0xff000000),
        opacity: 1,
        size: 24,
      ),
      sliderTheme: SliderThemeData(
//        activeTrackColor: null,
//        inactiveTrackColor: null,
//        disabledActiveTrackColor: null,
//        disabledInactiveTrackColor: null,
//        activeTickMarkColor: null,
//        inactiveTickMarkColor: null,
//        disabledActiveTickMarkColor: null,
//        disabledInactiveTickMarkColor: null,
//        thumbColor: null,
//        disabledThumbColor: null,
//        thumbShape: null(),
//        overlayColor: null,
//        valueIndicatorColor: null,
//        valueIndicatorShape: null(),
//        showValueIndicator: null,
        valueIndicatorTextStyle: TextStyle(
          color: Color(0xdd000000),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppTheme.tominAccent,
        unselectedLabelColor: AppTheme.tominAccent,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Color(0x1fffffff),
        brightness: Brightness.dark,
        deleteIconColor: AppTheme.tominAccent,
        disabledColor: Color(0x0cffffff),
        labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
        labelStyle: TextStyle(
          color: AppTheme.tominAccent,
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
          color: Color(0x3dffffff),
//          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: Color(0x3d212121),
        selectedColor: Color(0x3dffffff),
        shape: StadiumBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            )),
      ),
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          )),
    );
  }
}
