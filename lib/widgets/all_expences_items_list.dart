import 'package:dashboard/models/all_expences_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/all_expences_item.dart';
import 'package:flutter/material.dart';

class AllExpencesItemsList extends StatefulWidget {
  const AllExpencesItemsList({super.key});

  @override
  State<AllExpencesItemsList> createState() => _AllExpencesItemsListState();
}

class _AllExpencesItemsListState extends State<AllExpencesItemsList> {
  final List<AllExpencesItemModel> items = [
    AllExpencesItemModel(
        title: 'Blance',
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: 20.129),
    AllExpencesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: 20.129),
    AllExpencesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: 20.129)
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpencesItem(
              model: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpencesItem(
              model: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpencesItem(
              model: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        )
      ],
    );

    // Row(
    //   children: List.generate(items.length, (index) {
    //     if (index == 2) {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               selectedIndex = index;
    //             });
    //           },
    //           child: AllExpencesItem(
    //             model: items[index],
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               selectedIndex = index;
    //             });
    //           },
    //           child: AllExpencesItem(
    //             model: items[index],
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       );
    //     }
    //   }),
    // );
  }
}
