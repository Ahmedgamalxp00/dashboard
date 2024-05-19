import 'package:dashboard/widgets/cards_page_view.dart';
import 'package:dashboard/widgets/indecator_dot.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardsPageView(pageController: pageController),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 6),
              child: IndecatorDot(
                isActive: currentIndex == index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
