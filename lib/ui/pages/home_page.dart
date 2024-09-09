import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vertical_landig_page/ui/views/about_view.dart';
import 'package:vertical_landig_page/ui/views/contact_view.dart';
import 'package:vertical_landig_page/ui/views/home_view.dart';
import 'package:vertical_landig_page/ui/views/location_view.dart';
import 'package:vertical_landig_page/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
                right: 20,
                top: 20,
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.pink, Colors.purpleAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView()
      ],
    );
  }
}
