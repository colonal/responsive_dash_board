import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';

import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208CC8), title: "Design service", value: "40%"),
    ItemDetailsModel(
        color: Color(0xFF4EB7F2), title: "Design product", value: "25%"),
    ItemDetailsModel(
        color: Color(0xFF064061), title: "Product royalti", value: "20%"),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(items.length, (index) => ItemDetails(items[index])),
    );
  }
}
