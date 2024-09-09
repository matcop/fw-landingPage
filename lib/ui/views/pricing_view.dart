import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('PRICING View...',
              style: GoogleFonts.montserratAlternates(
                  fontSize: 80, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
