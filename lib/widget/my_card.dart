import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(child: SizedBox(height: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name card",
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "Syah Bandi",
                      style: AppStyles.styleMedium20(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  Assets.imagesGallery,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "0918 8124 0042 8129",
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
