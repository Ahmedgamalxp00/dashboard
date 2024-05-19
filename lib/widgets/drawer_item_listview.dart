import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListview extends StatefulWidget {
  const DrawerItemListview({super.key});
  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

class _DrawerItemListviewState extends State<DrawerItemListview> {
  int isSelected = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (isSelected != index) {
              setState(() {
                isSelected = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: items[index],
            isSelected: isSelected == index,
          )),
    );
  }
}
