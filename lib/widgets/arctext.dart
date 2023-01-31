import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:google_fonts/google_fonts.dart';

class ArcTextWidget extends StatelessWidget {
  const ArcTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ArcText(
      radius: 110,
      text: 'NOOR  OPTICAL  CO.',

      textStyle: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
      startAngle: pi + 2.05,
      startAngleAlignment: StartAngleAlignment.start,
      placement: Placement.middle,
      direction: Direction.clockwise);
}
