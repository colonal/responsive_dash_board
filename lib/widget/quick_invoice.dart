import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/latest_transaction.dart';
import 'package:responsive_dash_board/widget/quick_invoice_form.dart';

import 'custom_background_widget.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(color: Color(0xFFF1F1F1), height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
