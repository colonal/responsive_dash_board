import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartDate()));
  }

  PieChartData getChartDate() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          log("${pieTouchResponse?.touchedSection?.touchedSection?.value}");
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0xFF208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 40,
          value: 25,
          color: const Color(0xFF4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 40,
          value: 20,
          color: const Color(0xFF064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 40,
          value: 22,
          color: const Color(0xFFE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
