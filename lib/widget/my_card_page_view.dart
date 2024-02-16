import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/my_card.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController;
  const MyCardPageView(this.pageController, {super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) => const MyCard(),
    );
  }
}
