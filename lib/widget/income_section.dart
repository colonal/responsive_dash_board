import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_widget.dart';
import 'package:responsive_dash_board/widget/income_section_header.dart';

import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
