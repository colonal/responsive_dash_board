import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';

import 'inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel item;
  final bool isSelected;
  const AllExpensesItem(
      {required this.item, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild: ActiveAllExpensesItem(itemModel: item),
      secondChild: InActiveAllExpensesItem(itemModel: item),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
