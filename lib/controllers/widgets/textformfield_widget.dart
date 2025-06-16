import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controllers/Constants/appColors/appColors..dart';

class TextformfieldWidget extends StatefulWidget {
  Widget prefixicon;
  Widget suffixicon;
  TextEditingController controller;
//String obscuretext;
  String hinttext;
  TextformfieldWidget(
      {super.key,
      required this.hinttext,
      required this.prefixicon,
      required this.suffixicon,
        required this.controller,
     // required this.obscuretext
      });

  @override
  State<TextformfieldWidget> createState() => _TextformfieldWidgetState();
}

class _TextformfieldWidgetState extends State<TextformfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Appcolors.whitecolork),
      child: TextFormField(
        controller: widget.controller,
      //  obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
            suffixIcon: widget.suffixicon,
            prefixIcon: widget.prefixicon,
            hintText: widget.hinttext,
            hintStyle: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.grey.shade500,
            ),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
