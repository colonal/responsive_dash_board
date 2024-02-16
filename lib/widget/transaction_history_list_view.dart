import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';
import 'package:responsive_dash_board/widget/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(items.length, (index) => TransactionItem(items[index])),
    );
  }
}
