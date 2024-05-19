import 'package:dashboard/models/all_expences_item_model.dart';
import 'package:dashboard/widgets/active_all_expences_item.dart';
import 'package:dashboard/widgets/inactive_all_expences_item.dart';
import 'package:flutter/material.dart';

class AllExpencesItem extends StatelessWidget {
  const AllExpencesItem(
      {super.key, required this.isSelected, required this.model});
  final AllExpencesItemModel model;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpencesItem(model: model)
        : InactiveAllExpencesItem(model: model);
  }
}
