import 'package:flutter/material.dart';

import '../model/drawer_item_model.dart';
import 'active_and_in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem(
      {required this.drawerItemModel, required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
