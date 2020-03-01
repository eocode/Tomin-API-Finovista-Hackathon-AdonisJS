import 'package:flutter/material.dart';
import 'package:tominapp/app/api/ApiAuth.dart';
import 'package:tominapp/app/generics.dart';
import 'package:tominapp/app/them.dart';
import 'package:tominapp/pages/home/challenge0/models/credit_card.dart';
import 'package:tominapp/pages/home/challenge0/screens/credit_card_screen.dart';
import 'package:tominapp/pages/home/challenge0/widgets/credit_card_widget.dart';
import 'package:tominapp/pages/home/challenge0/widgets/history_widget.dart';
import 'package:tominapp/pages/home/challenge0/widgets/send_money_widget.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        backgroundColor: AppTheme.tominAccent,
        elevation: 0.0,
        leading: Container(),
        title: Text(
          "TOMIN",
          style: TextStyle(
              inherit: true,
              fontWeight: FontWeight.w700,
              color: AppTheme.smoke),
        ),
        centerTitle: false,
        actions: <Widget>[
          buttonLightAppPrimary('Salir', () {
            ApiAuth().logout().then((r) {
              if (r) {
                Navigator.pushNamed(context, '/');
              }
            });
          })
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildCreditCards(),
          SendMoneyWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: HistoryWidget(),
          )
        ],
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget _buildCreditCards() {
    List<CreditCard> creditCards=[];
    creditCards.add(CreditCard("4616900007729988", "https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png", "300", "Card Pay", "06/23", "192"));

    return Container(
      height: 280.0,
      margin: EdgeInsets.only(left: 4.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          CreditCard creditCard = creditCards[index];
          Color color =
              index % 2 == 0 ? AppTheme.tominAccent : Theme.of(context).primaryColor;

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
                onTap: () {
//                  Navigator.of(context).push(MaterialPageRoute(
//                      builder: (context) => CreditCardScreen(
//                            creditCard,
//                            themeColor: color,
//                          )));
                },
                child: CreditCardWidget(
                  creditCard,
                  collapsed: true,
                  themeColor: color,
                )),
          );
        },
        itemCount: creditCards.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
