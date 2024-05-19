import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              // centerSpaceRadius: 40,
              sections: showingSections(),
            ),
          ),
        ));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 40.0 : 30.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            showTitle: false,
            color: const Color(0xff208CC8),
            value: 40,
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            showTitle: false,
            color: const Color(0xff4EB7F2),
            value: 25,
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            showTitle: false,
            color: const Color(0xff064061),
            value: 20,
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            showTitle: false,
            color: const Color(0xffE2DECD),
            value: 22,
            radius: radius,
          );

        default:
          throw Error();
      }
    });
  }
}
