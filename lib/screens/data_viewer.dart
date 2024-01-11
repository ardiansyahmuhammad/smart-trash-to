import 'package:flutter/material.dart';
import 'package:trashbin/models/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DataView extends StatelessWidget {
  DataView({Key? key}) : super(key: key);

  final List<BarChartModel> data = [
    BarChartModel(
      trashcan: "Plastik",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      trashcan: "Kaleng",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      trashcan: "Botol",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      trashcan: "Organik",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      trashcan: "Kertas",
      financial: 200,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      trashcan: "Kaca",
      financial: 278,
      color: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.trashcan,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Sampah"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}
