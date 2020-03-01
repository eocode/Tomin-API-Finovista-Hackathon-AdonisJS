import 'package:tominapp/pages/home/challenge0/models/balance.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

import 'package:tominapp/pages/home/challenge0/models/user.dart';
//
//List<charts.Series<Balance, String>> _getSeries(List<String>timeValues,int max){
//
//   Random rnd=Random();
//   var incomeData=timeValues.map((value)=>Balance(value,rnd.nextInt(max).toDouble())).toList();
//   var expenditureData=timeValues.map((value)=>Balance(value,rnd.nextInt(max).toDouble())).toList();
//   return [
//     charts.Series<Balance, String>(
//       id: 'Income',
//       domainFn: (Balance sales, _) => sales.time,
//       measureFn: (Balance sales, _) => sales.money,
//       data: incomeData,
//     ),
//     charts.Series<Balance,String>(
//       id: "Expenditure",
//       domainFn: (Balance balance,_)=>balance.time,
//       measureFn: (Balance balance,_)=>balance.money,
//       data: expenditureData
//     )
//   ];
//}
//
//List<charts.Series<Balance, String>> getSeries(String key,int index,{int max=1000}) {
//
//    var months=["Jan","Feb","Mar","Apr","May","June","July","Sep","Oct","Nov","Dec"];
//    var days=List.generate(24, (index)=>index<9?"0${index+1}":"${index+1}");
//    var years=["2017","2018","2019"];
//    var hours=List.generate(24, (index)=>"${index+1}hr");
//    var mainMap={
//      "Year":"Month",
//      "Month":"Day",
//      "Day":"Hour"
//    };
//    var subMap={
//      "Hour":hours,
//      "Day":days,
//      "Month":months,
//      "Year":years
//    };
//    var subKey=mainMap[key];
//    print("Called");
//    return _getSeries(subMap[subKey],max);
//}

List<User> getUser(){

     List<User>users=[];
     users.add(User("Proveedor","https://tec-ps.com/wp-content/uploads/2018/10/USER.png"));
     users.add(User("Proveedor","https://tec-ps.com/wp-content/uploads/2018/10/USER.png"));
     return users;
}