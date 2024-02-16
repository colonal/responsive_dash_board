import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF1F1F1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: AppStyles.styleMedium16(context).color,
          ),
        ],
      ),
    );
  }
}
