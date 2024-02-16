import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_widget.dart';
import 'package:responsive_dash_board/widget/my_card_section.dart';
import 'package:responsive_dash_board/widget/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: 24,
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xFFF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
