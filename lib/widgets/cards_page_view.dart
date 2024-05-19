import 'package:dashboard/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => GestureDetector(
          onHorizontalDragUpdate: (details) {
            pageController
                .jumpTo(pageController.offset - details.primaryDelta!);
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: MyCard(),
          ),
        ),
      ),
    );
  }
}
