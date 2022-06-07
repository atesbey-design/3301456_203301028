import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class chartData extends StatefulWidget {
  chartData({Key? key}) : super(key: key);

  @override
  State<chartData> createState() => _chartDataState();
}

class _chartDataState extends State<chartData> {
  @override
  late List<musicTimer> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 0, 189).withOpacity(0.3),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SfCircularChart(
            title: ChartTitle(
                text: 'Günlük Vakit Geçirme \n ',
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
            legend: Legend(
                textStyle: TextStyle(color: Colors.white, fontSize: 14),
                isVisible: true,
                overflowMode: LegendItemOverflowMode.wrap),
            tooltipBehavior: _tooltipBehavior,
            series: <CircularSeries>[
              RadialBarSeries<musicTimer, String>(
                  cornerStyle: CornerStyle.endCurve,
                  dataSource: _chartData,
                  xValueMapper: (musicTimer data, _) => data.musicLocale,
                  yValueMapper: (musicTimer data, _) => data.time,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                  maximumValue: 100)
            ],
          ),
        ));
  }

  List<musicTimer> getChartData() {
    final List<musicTimer> chartData = [
      musicTimer('Müzik', 80),
      musicTimer('Albüm ', 10),
      musicTimer('Kategori', 10),
    ];
    return chartData;
  }
}

class musicTimer {
  musicTimer(this.musicLocale, this.time);
  final String musicLocale;
  final int time;
}
