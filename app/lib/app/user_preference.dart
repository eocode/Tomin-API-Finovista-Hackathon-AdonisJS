import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static final UserPreference _instance = new UserPreference._internal();

  factory UserPreference() {
    return _instance;
  }

  UserPreference._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  get token {
    return _prefs.getString('token') ?? 'null';
  }

  set token(String value) {
    _prefs.setString('token', value);
  }

  get userDetail {
    return _prefs.getString('user') ?? 'null';
  }

  set userDatail(String value) {
    _prefs.setString('user', value);
  }

  get online {
    return _prefs.getBool('online');
  }

  set online(bool value) {
    _prefs.setBool('online', value);
  }

  get open {
    return _prefs.getBool('open');
  }

  set open(bool value) {
    _prefs.setBool('open', value);
  }

  get delivery {
    return _prefs.getBool('delivery');
  }

  set delivery(bool value) {
    _prefs.setBool('delivery', value);
  }

  get deliveryCost {
    return _prefs.getDouble('deliveryCost');
  }

  set deliveryCost(double value) {
    _prefs.setDouble('deliveryCost', value);
  }

  get deliveryMin {
    return _prefs.getInt('deliveryMin');
  }

  set deliveryMin(int value) {
    _prefs.setInt('deliveryMin', value);
  }

  get deliveryMax {
    return _prefs.getInt('deliveryMax');
  }

  set deliveryMax(int value) {
    _prefs.setInt('deliveryMax', value);
  }

  get servicesPayment {
    return _prefs.getBool('servicesPayment');
  }

  set servicesPayment(bool value) {
    _prefs.setBool('servicesPayment', value);
  }

  get cardPayment {
    return _prefs.getBool('cardPayment');
  }

  set cardPayment(bool value) {
    _prefs.setBool('cardPayment', value);
  }

  get codi {
    return _prefs.getBool('codi');
  }

  set codi(bool value) {
    _prefs.setBool('codi', value);
  }

  get cardPaymentDevice {
    return _prefs.getInt('cardPaymentDevice');
  }

  set cardPaymentDevice(int value) {
    _prefs.setInt('cardPaymentDevice', value);
  }

  get cardPaymentAddCommision {
    return _prefs.getBool('cardPaymentAddCommision');
  }

  set cardPaymentAddCommision(bool value) {
    _prefs.setBool('cardPaymentAddCommision', value);
  }

  get cardPaymentCommision {
    return _prefs.getDouble('cardPaymentCommision');
  }

  set cardPaymentCommision(double value) {
    _prefs.setDouble('cardPaymentCommision', value);
  }

  get cardPaymentIcon {
    return _prefs.getString('cardPaymentIcon');
  }

  set cardPaymentIcon(String value) {
    _prefs.setString('cardPaymentIcon', value);
  }

  get cardPaymentDeviceCompany {
    return _prefs.getString('cardPaymentDeviceCompany');
  }

  set cardPaymentDeviceCompany(String value) {
    _prefs.setString('cardPaymentDeviceCompany', value);
  }

  get cardPaymentIva {
    return _prefs.getBool('cardPaymentIva');
  }

  set cardPaymentIva(bool value) {
    _prefs.setBool('cardPaymentIva', value);
  }

  get cardPaymentFinalCommision {
    return _prefs.getDouble('cardPaymentFinalCommision');
  }

  set cardPaymentFinalCommision(double value) {
    _prefs.setDouble('cardPaymentFinalCommision', value);
  }

  get about {
    return _prefs.getString('about');
  }

  set about(String value) {
    _prefs.setString('about', value);
  }

  get slogan {
    return _prefs.getString('slogan');
  }

  set slogan(String value) {
    _prefs.setString('slogan', value);
  }

  get profitMargin {
    return _prefs.getInt('profitMargin');
  }

  set profitMargin(int value) {
    _prefs.setInt('profitMargin', value);
  }

  get latitude {
    return _prefs.getString('latitude');
  }

  set latitude(String value) {
    _prefs.setString('latitude', value);
  }

  get longitude {
    return _prefs.getString('longitude');
  }

  set longitude(String value) {
    _prefs.setString('longitude', value);
  }

  get updateLocation {
    return _prefs.getBool('updateLocation') ?? false;
  }

  set updateLocation(bool value) {
    _prefs.setBool('updateLocation', value);
  }

  get register {
    return _prefs.getBool('register') ?? false;
  }

  set register(bool value) {
    _prefs.setBool('register', value);
  }

  get logged {
    return _prefs.getBool('logged') ?? false;
  }

  set logged(bool value) {
    _prefs.setBool('logged', value);
  }

  get login {
    return _prefs.getBool('login') ?? false;
  }

  set login(bool value) {
    _prefs.setBool('login', value);
  }

  get updateSale {
    return _prefs.getBool('updateSale') ?? false;
  }

  set updateSale(bool value) {
    _prefs.setBool('updateSale', value);
  }

  get identifier {
    return _prefs.getString('identifier');
  }

  set identifier(String value) {
    _prefs.setString('identifier', value);
  }

  get version {
    return _prefs.getString('version') ?? '';
  }

  set version(String value) {
    _prefs.setString('version', value);
  }

  get loginVersion {
    return _prefs.getString('loginVersion') ?? '';
  }

  set loginVersion(String value) {
    _prefs.setString('loginVersion', value);
  }

  get theme {
    return _prefs.getString('appTheme') ?? 'lightTheme';
  }

  set theme(String value) {
    _prefs.setString('appTheme', value);
  }

  get total {
    return _prefs.getDouble('total');
  }

  set total(double value) {
    _prefs.setDouble('total', value);
  }

  get productsCount {
    return _prefs.getInt('productCount');
  }

  set productsCount(int value) {
    _prefs.setInt('productCount', value);
  }
}
