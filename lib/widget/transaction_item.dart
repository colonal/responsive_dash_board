import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../model/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionItem(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transaction.title,
          style: AppStyles.styleMedium16(context),
        ),
        subtitle: Text(
          transaction.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transaction.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transaction.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
