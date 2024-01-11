import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String trashcan;
  int financial;

  final charts.Color color;

  BarChartModel(
      {required this.trashcan, required this.financial, required this.color});
}
