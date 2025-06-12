import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Textwidget extends StatelessWidget {
  Textwidget({super.key,required this.text,required this.fontsize,required this.color});
  double fontsize;
  Color color;
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
       // fontWeight: FontWeight.bold,
        fontSize: fontsize,
        color: color,

      ),

    );
  }
}
