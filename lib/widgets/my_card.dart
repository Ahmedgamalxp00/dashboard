import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 188,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 32, top: 16, right: 24, bottom: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name card',
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Syah Bandi',
                          style: AppStyles.styleMedium20(context),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.imagesGallery),
                  const SizedBox(width: 21),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold20(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
