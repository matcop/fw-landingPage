import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landig_page/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({super.key});

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(microseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isOpen) {
            controller.reverse();
          } else {
            controller.forward();
          }

          setState(() {
            isOpen = !isOpen;
          });
        },
        child: Container(
            //puede ser AnimatedContainer
            // duration: Duration(milliseconds: 3000),
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: 150,
            height: isOpen ? 310 : 50,
            color: Colors.black,
            child: Column(
              children: [
                _MenuTitle(isOpen: isOpen, controller: controller),
                if (isOpen) ...[
                  CustomMenuItem(delay: 80, text: 'Home', onPressed: () {}),
                  CustomMenuItem(delay: 90, text: 'About', onPressed: () {}),
                  CustomMenuItem(delay: 110, text: 'Pricing', onPressed: () {}),
                  CustomMenuItem(delay: 130, text: 'Contact', onPressed: () {}),
                  CustomMenuItem(
                      delay: 160, text: 'Location', onPressed: () {}),
                  SizedBox(
                    height: 10,
                  )
                ]
              ],
            )),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 35 : 0,
          ),
          Text(
            'Menu',
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: controller,
              color: Colors.white)
        ],
      ),
    );
  }
}
