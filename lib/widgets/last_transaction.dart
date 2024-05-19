import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});
  static const users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              scrollController
                  .jumpTo(scrollController.offset - details.primaryDelta!);
            },
            child: Row(
              children: users
                  .map((user) => IntrinsicWidth(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: UserInfoListTile(user: user),
                      )))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
