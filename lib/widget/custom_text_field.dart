import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TextField(
        decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
          hintText: hintText,
        ),
      );
    });
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
