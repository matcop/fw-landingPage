import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  PageController scrollController = new PageController();

  goTo(int index) {
    scrollController.animateToPage(index,
        duration: Duration(milliseconds: 3000), curve: Curves.easeInOut);
  }
}
