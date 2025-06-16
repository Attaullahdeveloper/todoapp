import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';

import '../../controllers/Constants/appColors/appColors..dart';
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    Stack(
      children:[
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(Icons.chevron_left,size: 30,color: Appcolors.lightbutton,),
                ),
              ),
              SizedBox(width: 40,),
              Text('Setting',style: GoogleFonts.poppins(fontSize: 25,color: Colors.white,fontWeight: FontWeight.normal
              ),)
            ],
          ),
          SizedBox(height: 110,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            Row(
              children: [
                Icon(Icons.account_circle,color: Colors.white,),
                SizedBox(width: 10,),
                Textwidget(text: 'Profile', fontsize: 18, color: Colors.white),
                SizedBox(width: 190,),
                Icon(Icons.chevron_right,color: Colors.white,size: 30,)

              ],
            ),
          ),
          Divider(color: Colors.grey,),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            Row(
              children: [
                Icon(Icons.chat,color: Colors.white,),
                SizedBox(width: 10,),
                Textwidget(text: 'Conversation', fontsize: 18, color: Colors.white),
                SizedBox(width: 120,),
                Icon(Icons.chevron_right,color: Colors.white,size: 30,)

              ],
            ),
          ),
          SizedBox(height: 5,),
          Divider(color: Colors.grey,),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            Row(
              children: [
                Icon(Icons.folder_open,color: Colors.white,),
                SizedBox(width: 10,),
                Textwidget(text: 'Projects', fontsize: 18, color: Colors.white),
                SizedBox(width: 170,),
                Icon(Icons.chevron_right,color: Colors.white,size: 30,)

              ],
            ),
          ),
          SizedBox(height: 5,),
          Divider(color: Colors.grey,),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            Row(
              children: [
                Icon(Icons.description,color: Colors.white,),
                SizedBox(width: 10,),
                Textwidget(text: 'Terms & Policies', fontsize: 18, color: Colors.white),
                SizedBox(width: 95,),
                Icon(Icons.chevron_right,color: Colors.white,size: 30,)

              ],
            ),
          ),
          SizedBox(height: 5,),
          Divider(color: Colors.grey,),
          SizedBox(height: 80,),
          Container(
            width: 226,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Center(
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(Icons.logout,color: Colors.red,),
                  SizedBox(width: 10,),
                  Textwidget(text: 'Logout', fontsize: 16, color: Colors.red)
                ],
              ),
            ),
          )//button---------------------------
        ],
      ),
    ]
    ),
    );
  }
}
