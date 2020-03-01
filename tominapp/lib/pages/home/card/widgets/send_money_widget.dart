import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:tominapp/app/them.dart';
import 'package:tominapp/pages/home/card/widgets/user_widget.dart';
import 'package:tominapp/pages/home/card/models/user.dart';
import 'package:tominapp/pages/home/card/resources/database.dart' as db;

class SendMoneyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SendMoneyWidgetState();
}

class _SendMoneyWidgetState extends State<SendMoneyWidget> {

  @override
  Widget build(BuildContext context) {
    var users = db.getUser();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Realizar pago",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          height: 160.0,
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (index == 0) {
                return _addButton();
              }
              User user = users[index - 1];
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: UserWidget(
                  user: user,
                ),
              );
            },
            itemCount: users.length + 1,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  Widget _addButton() {
    return Container(
      margin: EdgeInsets.all(12.0),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: Colors.black54, width: 0.5, style: BorderStyle.solid)),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                IcoFontIcons.qrCode,
                color: AppTheme.tominAccent,
              ),
              onPressed: () {
//                ScannData().scanBarcode().then((barcode) {
//                  print(barcode);
//                });
              },
              iconSize: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "QR",
                style: TextStyle(
                    inherit: true, fontWeight: FontWeight.w500, fontSize: 14.0),
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
