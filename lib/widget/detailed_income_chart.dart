import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          value: 40,
          title: activeIndex == 0 ? "Design service" : "40%",
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
          radius: activeIndex == 1 ? 50 : 40,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          title: activeIndex == 1 ? "Design product" : "25%",
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          radius: activeIndex == 2 ? 50 : 40,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          radius: activeIndex == 3 ? 50 : 40,
          value: 22,
          title: activeIndex == 3 ? "Other" : "22%",
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
