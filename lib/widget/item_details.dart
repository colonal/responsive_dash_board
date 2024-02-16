import 'package:flutter/material.dart';

import '../model/item_details_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;
  const ItemDetails(this.itemDetailsModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xFF064061)),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xFF208CC8)),
      ),
    );
  }
}
