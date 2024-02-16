import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses_items_list_view.dart';

import 'all_expenses_header.dart';
import 'custom_background_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
