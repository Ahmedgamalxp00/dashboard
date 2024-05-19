import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 3,
        color: const Color(0xFF4EB7F2),
      ),
      title: Text(drawerItemModel.title, style: AppStyles.styleBold16(context)),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context).copyWith(
            color: const Color(0xff064061), fontWeight: FontWeight.w400),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}
