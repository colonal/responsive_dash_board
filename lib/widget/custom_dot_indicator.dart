import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFE8E8E8),
      ),
    );
  }
}
