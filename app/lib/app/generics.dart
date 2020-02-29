import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * .7;
    double containerHeight = 15;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * .2,
            width: MediaQuery.of(context).size.width * .2,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Container(
                height: containerHeight,
                width: containerWidth * 0.75,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ShimmerListLoading extends StatelessWidget {
  final int n;

  ShimmerListLoading(this.n);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(n, (index) {
        return Shimmer.fromColors(
          highlightColor: AppTheme.white,
          baseColor: AppTheme.lesquiLight.withOpacity(0.6),
          child: ShimmerLayout(),
          enabled: true,
        );
      }),
    );
  }
}

void showAlert(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (c) {
        return AlertDialog(
          title: Text('Upss!!'),
          content: Text(
            message,
            textAlign: TextAlign.justify,
          ),
        );
      });
}

String calculatePrice(double price) {
  final prefs = UserPreference();
  if (prefs.cardPaymentAddCommision && prefs.cardPayment) {
    return addCommission(price, true);
  } else {
    return formatNumber(price, true);
  }
}

String addCommission(double price, bool rounded) {
  final prefs = UserPreference();
  double cost = (price) / (1 - ((prefs.cardPaymentFinalCommision / 100)));
  return formatNumber(cost, rounded).toString();
}

String formatNumber(double number, bool rounded) {
  int a = number.toInt();
  double decimal = number - a;
  if (number - a > 0) {
    if (rounded) {
      if (decimal > .5) {
        return (a + 1).toString();
      } else {
        return (a + .5).toString();
      }
    } else {
      return number.toStringAsFixed(2);
    }
  } else {
    return a.toString();
  }
}

Widget buttonLightApp(String text, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child: RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Text(
          text.toUpperCase(),
          style: AppTheme.lightButtonText,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      color: AppTheme.lesquiLight,
    ),
  );
}

Widget buttonLightAppPrimary(String text, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(
          text.toUpperCase(),
          style: AppTheme.darkButtonText,
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      color: AppTheme.secondary,
    ),
  );
}

Widget buttonPayment(String text, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Text(
          text.toUpperCase(),
          style: AppTheme.lightButtonText,
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 0,
      color: AppTheme.lesquiLight,
    ),
  );
}

Widget buttonConfirmPay(
    String text, VoidCallback onPressed, IconData icon, bool inactive) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    child: RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text.toUpperCase(),
              style:
                  inactive ? AppTheme.darkButtonText : AppTheme.lightButtonText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              child: Icon(
                icon,
                color: AppTheme.secondary.withOpacity(0.7),
              ),
              backgroundColor:
                  inactive ? AppTheme.smoke : AppTheme.lesquiAccent,
            ),
          ],
        ),
      ),
      onPressed: inactive ? null : onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 0,
      color: AppTheme.lesquiPrimary,
    ),
  );
}

Widget buttonScan(String text, VoidCallback onPressed, IconData icon) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    child: RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text.toUpperCase(),
              style: AppTheme.lightButtonText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              child: Icon(
                icon,
                color: AppTheme.secondary.withOpacity(0.7),
              ),
              backgroundColor: AppTheme.lesquiAccent,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 0,
      color: AppTheme.lesquiLight,
    ),
  );
}

Widget buttonAppRemove(String text, VoidCallback onPressed) {
  return RaisedButton(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        text.toUpperCase(),
        style: AppTheme.darkButtonText,
        textAlign: TextAlign.center,
      ),
    ),
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 0,
    color: AppTheme.red,
  );
}

Widget buttonAppAdd(String text, VoidCallback onPressed) {
  return RaisedButton(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        text.toUpperCase(),
        style: AppTheme.darkButtonText,
        textAlign: TextAlign.center,
      ),
    ),
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 0,
    color: AppTheme.green,
  );
}

Widget buttonAppIcon(IconData icon, VoidCallback onPressed) {
  return RaisedButton(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            icon,
            color: AppTheme.secondary,
          ),
        ],
      ),
    ),
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 5,
    color: AppTheme.lesquiLight,
  );
}

Widget error(String error) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Upps!',
                    style: AppTheme.warning,
                    textAlign: TextAlign.justify,
                  ),
                ),
                subtitle: Text(
                  error,
                  style: AppTheme.paragraph,
                  textAlign: TextAlign.justify,
                ),
                leading: Icon(
                  IcoFontIcons.warning,
                  size: 50,
                  color: AppTheme.lesquiAccent,
                ),
              ),
            )),
      ],
    ),
  );
}

Widget loading(bool dark, double vertical, double horizontal) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: Center(
          child: CircularProgressIndicator(
        backgroundColor: dark ? AppTheme.secondary : AppTheme.lesqui,
      )));
}

Widget brand(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, 'about'),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'lesqui',
          style: AppTheme.lesquiBrand(),
        ),
      ),
    ),
  );
}
