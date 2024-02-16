import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPageIndex;
  const DotsIndicator(this.currentPageIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsetsDirectional.only(end: 8),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
