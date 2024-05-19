import 'package:dashboard/models/all_expences_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_expences_item_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpencesItem extends StatelessWidget {
  const ActiveAllExpencesItem({
    super.key,
    required this.model,
  });
  final AllExpencesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        border: Border.all(color: const Color(0xff4EB7F2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpencesItemHeader(
            image: model.image,
            isSelected: true,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(model.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Colors.white)),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('\$${model.price}',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
