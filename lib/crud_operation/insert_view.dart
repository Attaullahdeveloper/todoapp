import 'package:flutter/material.dart';
import 'package:todoapp/crud_operation/textfield_widget.dart';
class InsertView extends StatefulWidget {
  const InsertView({super.key});

  @override
  State<InsertView> createState() => _InsertViewState();
}

class _InsertViewState extends State<InsertView> {
  TextEditingController titlecontrolle=TextEditingController();
  TextEditingController descriptioncontrolle=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert screen'),
      ),
      body: Column(
        children: [
          TextfieldWidget(hinttext: 'Enter title', inputcontrollerl: titlecontrolle),
          TextfieldWidget(hinttext: 'Enter description', inputcontrollerl: descriptioncontrolle),
          FloatingActionButton(onPressed: ()async{
         //flutter   await FirebaseFireStore
          })
        ],
      
      ),
    );
  }
}
