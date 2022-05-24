import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DailyOutflow {
  final String day;
  final int amount;

  DailyOutflow(this.day, this.amount);
}

class Chart extends StatelessWidget {
  static List<charts.Series<DailyOutflow, String>> _createData() {
    final taxifareData = [
      new DailyOutflow('Mon', 5),
      new DailyOutflow('Tue', 25),
      new DailyOutflow('Wed', 97),
      new DailyOutflow('Thu', 15),
      new DailyOutflow('Fri', 40),
      new DailyOutflow('Sat', 88),
      new DailyOutflow('Sun', 11)
    ];

    final groceryboughtData = [
      new DailyOutflow('Mon', 27),
      new DailyOutflow('Tue', 50),
      new DailyOutflow('Wed', 10),
      new DailyOutflow('Thu', 20),
      new DailyOutflow('Fri', 22),
      new DailyOutflow('Sat', 49),
      new DailyOutflow('Sun', 66)
    ];

    final cardlayoverData = [
      new DailyOutflow('Mon', 14),
      new DailyOutflow('Tue', 18),
      new DailyOutflow('Wed', 46),
      new DailyOutflow('Thu', 75),
      new DailyOutflow('Fri', 99),
      new DailyOutflow('Sat', 61),
      new DailyOutflow('Sun', 80)
    ];

    return [
      new charts.Series<DailyOutflow, String>(
        id: 'Credit',
        domainFn: (DailyOutflow sales, _) => sales.day,
        measureFn: (DailyOutflow sales, _) => sales.amount,
        fillColorFn: (DailyOutflow sales, _) => charts.ColorUtil.fromDartColor(Color(0xFF1b2133)),
        data: cardlayoverData
      ),
      new charts.Series<DailyOutflow, String>(
        id: 'Grocery',
        domainFn: (DailyOutflow sales, _) => sales.day,
        measureFn: (DailyOutflow sales, _) => sales.amount,
        fillColorFn: (DailyOutflow sales, _) => charts.ColorUtil.fromDartColor(Color(0xFFf42c5f)),
        data: groceryboughtData
      ),
      new charts.Series<DailyOutflow, String>(
        id: 'Taxi',
        domainFn: (DailyOutflow sales, _) => sales.day,
        measureFn: (DailyOutflow sales, _) => sales.amount,
        fillColorFn: (DailyOutflow sales, _) => charts.ColorUtil.fromDartColor(Color(0xFF3dddff)),
        data: taxifareData
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(_createData(), animate: false, barGroupingType: charts.BarGroupingType.stacked);
  }
}