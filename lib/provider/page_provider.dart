// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = new PageController();

  List<String> _pages = ['home', 'about', 'pricing', 'contact', 'location'];

  createScrollController(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    // final routeName = _pages[index];
    // print(routeName);
//la linea de abajo solo funciona cuando es pagina web.
    html.window.history.pushState(null, 'none ', '#/${_pages[index]}');

    scrollController.animateToPage(index,
        duration: Duration(milliseconds: 3000), curve: Curves.easeInOut);
  }
}
