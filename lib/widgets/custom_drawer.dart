import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_items.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Ahmad',
            subTitle: 'ahmad@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemListView(),
          Expanded(child: SizedBox()),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: "Setting system",
              image: Assets.imagesSettings,
            ),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: "Logout account",
              image: Assets.imagesLogout,
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
