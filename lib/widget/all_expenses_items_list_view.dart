import 'package:flutter/material.dart';

import '../model/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int indexSelected = 0;
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: "\$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .asMap()
          .entries
          .map((item) => Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            indexSelected = item.key;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: item.key != 0 ? 12 : 0),
                          child: AllExpensesItem(
                              item: item.value,
                              isSelected: item.key == indexSelected),
                        ),
                      ),
                    ),
                    if (item.key != items.length - 1) const SizedBox(width: 8),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
