import 'package:flutter/material.dart';

import '../model/user_info_model.dart';
import '../utils/app_images.dart';
import 'user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> userInfos = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfos.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(
            userInfoModel: userInfos[index],
          ),
        ),
      ),
    );
  }
}
