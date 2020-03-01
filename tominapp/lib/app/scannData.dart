import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
//class ScannData {
//  Future<String> scanBarcode() async {
//    String barcode = '';
//    try {
//      barcode = await FlutterBarcodeScanner.scanBarcode(
//          "#ff6666", "Terminar", true, ScanMode.BARCODE);
//      if (barcode != '-1') {
//        Vibration.vibrate(duration: 500, amplitude: 128);
//      }
//      return barcode;
//    } on PlatformException {
//      return null;
//    }
//  }
//}