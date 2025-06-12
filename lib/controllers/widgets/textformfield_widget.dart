import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controllers/Constants/appColors/appColors..dart';

class TextformfieldWidget extends StatelessWidget {
  Widget prefixicon;
  Widget suffixicon;
//String obscuretext;
  String hinttext;
  TextformfieldWidget(
      {super.key,
      required this.hinttext,
      required this.prefixicon,
      required this.suffixicon,
     // required this.obscuretext
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Appcolors.whitecolork),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
            suffixIcon: suffixicon,
            prefixIcon: prefixicon,
            hintText: hinttext,
            hintStyle: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.grey.shade500,
            ),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
