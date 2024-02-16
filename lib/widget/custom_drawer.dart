import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/widget/active_and_in_active_drawer_item.dart';

import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

import '../model/user_info_model.dart';
import '../utils/app_images.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .7,
      child: const ColoredBox(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                  userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              )),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            DrawerItemListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 20)),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: "Setting System"),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: "Logout account"),
                  ),
                  SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
