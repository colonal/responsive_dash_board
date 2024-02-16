import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;

  const TitleTextField({required this.title, required this.hint, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hintText: hint),
      ],
    );
  }
}
