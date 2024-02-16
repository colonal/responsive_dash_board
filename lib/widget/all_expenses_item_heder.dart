import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackground;
  final Color? imageColor;
  const AllExpensesItemHeader(
      {required this.image, this.imageBackground, this.imageColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
              maxHeight: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: imageBackground ?? const Color(0xFFFAFAFA),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColor != null ? Colors.white : const Color(0xFF064061),
        ),
      ],
    );
  }
}
