import 'package:flutter/material.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final Widget child;
  final double? padding;
  const CustomBackgroundWidget({required this.child, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
