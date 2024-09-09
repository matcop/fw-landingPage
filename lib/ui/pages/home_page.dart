import 'package:flutter/material.dart';
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
      body: Container(
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
                right: 20,
                top: 20,
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
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
