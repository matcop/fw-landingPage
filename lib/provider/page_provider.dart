// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = new PageController();

  List<String> _pages = ['home', 'about', 'pricing', 'contact', 'location'];
  int _curretIndex = 0;

  createScrollController(String routeName) {
    this.scrollController =
        new PageController(initialPage: getPageIndex(routeName));

    this.scrollController.addListener(() {
      final index = (this.scrollController.page ?? 0).round();

      if (index != _curretIndex) {
        html.window.history.pushState(null, 'none ', '#/${_pages[index]}');

        html.document.title = _pages[index].toUpperCase();
        _curretIndex = index;
      }
    });
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    // final routeName = _pages[index];
    // print(routeName);
//la linea de abajo solo funciona cuando es pagina web.
    // html.window.history.pushState(null, 'none ', '#/${_pages[index]}');

    scrollController.animateToPage(index,
        duration: Duration(milliseconds: 3000), curve: Curves.easeInOut);
  }
}
