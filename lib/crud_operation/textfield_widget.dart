import 'package:flutter/material.dart';
class TextfieldWidget extends StatelessWidget {
  TextEditingController inputcontrollerl;
  String hinttext;
   TextfieldWidget({super.key,required this.hinttext,required this.inputcontrollerl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: TextFormField(
        controller: inputcontrollerl,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Colors.white,
          )
        ),
      ),
    );
  }
}
