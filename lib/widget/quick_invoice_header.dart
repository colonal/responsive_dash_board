import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA), shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
