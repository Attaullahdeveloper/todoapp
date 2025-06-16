import 'package:flutter/material.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';

import '../../../../controllers/Constants/appColors/appColors..dart';
class ConfirmationView extends StatelessWidget {
  // String title;
  // String description;
  ConfirmationView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                      Appcolors.primereydark,
                      Appcolors.primereylihgt,

                    ] )
            ),
          ),
          Column(
            children: [
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left,color: Colors.white,)),
                    Textwidget(text: 'Task Details', fontsize: 16, color: Colors.white),

                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Textwidget(text: 'team meeting', fontsize: 18, color: Colors.white),
                    SizedBox(width: 5,),
                    Icon(Icons.edit,color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.event,size: 12,color: Colors.white,),
                  SizedBox(width: 5,),
                  Textwidget(text: 'Tomorrow | 10:30pm', fontsize: 12, color: Colors.white),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.all(16),
                  child: Divider()),
              SizedBox(height: 200,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 78,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.detail,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        CircleAvatar(radius: 10,backgroundColor: Colors.green,child: Center(child: Icon(Icons.check,color: Colors.white,size: 15,)),),
                        SizedBox(height: 10,),
                        Text('Done',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 78,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.detail,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Icon(Icons.delete,color: Colors.red,size: 20,),
                        // CircleAvatar(radius: 10,backgroundColor: Colors.green,child: Center(child: Icon(Icons.delete,color: Colors.red,size: 15,)),),
                        SizedBox(height: 10,),
                        Text('Delete',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 78,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.detail,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Icon(Icons.pin,color: Colors.yellow,size: 20,),
                        // CircleAvatar(radius: 10,backgroundColor: Colors.green,child: Center(child: Icon(Icons.delete,color: Colors.red,size: 15,)),),
                        SizedBox(height: 10,),
                        Text('Pin',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
