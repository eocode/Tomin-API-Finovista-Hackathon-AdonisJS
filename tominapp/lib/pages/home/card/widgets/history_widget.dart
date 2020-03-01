import 'package:flutter/material.dart';
import 'package:tominapp/app/them.dart';
import 'package:tominapp/pages/home/card/models/payment.dart';
import 'package:tominapp/pages/home/card/widgets/payment_widget.dart';

class HistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Payment> payments = [];
    payments.add(Payment(
        "https://tec-ps.com/wp-content/uploads/2018/10/USER.png",
        "User",
        "Pago a Proveedor",
        "01 / 03 / 2020",
        10.0,
        -1));
    payments.add(Payment(
        "https://tec-ps.com/wp-content/uploads/2018/10/USER.png",
        "User",
        "Pago a Proveedor",
        "01 / 03 / 2020",
        20.0,
        -1));
    payments.add(Payment(
        "https://tec-ps.com/wp-content/uploads/2018/10/USER.png",
        "User",
        "Pago a Proveedor",
        "01 / 03 / 2020",
        30.0,
        -1));
    payments.add(Payment(
        "https://tec-ps.com/wp-content/uploads/2018/10/USER.png",
        "User",
        "Pago a Proveedor",
        "01 / 03 / 2020",
        10.0,
        -1));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 22.0,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  "Historial de movimientos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: AppTheme.tominAccent,
                ))
          ],
        ),
        Container(
          color: Colors.white,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return PaymentWidget(payments[index]);
            },
            itemCount: payments.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
