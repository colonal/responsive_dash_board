import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/income_section.dart';
import 'package:responsive_dash_board/widget/my_card_and_transaction_history_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(height: 40),
                        MyCardAndTransactionHistorySection(),
                        SizedBox(height: 24),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
