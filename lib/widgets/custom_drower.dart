import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import 'drawer_item_listview.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(left: 20),
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: UserInfoListTile(
                user: UserInfoModel(
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                  image: Assets.imagesAvatar3,
                ),
              ),
            ),
          ),
          DrawerItemListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'setting Account',
                  image: Assets.imagesSettings,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Logout Account',
                  image: Assets.imagesLogout,
                )),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
