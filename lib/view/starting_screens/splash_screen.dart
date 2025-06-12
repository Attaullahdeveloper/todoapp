import 'package:flutter/material.dart';
import 'package:todoapp/controllers/Constants/Appassets/appimages.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';
import 'package:todoapp/view/starting_screens/onboarding_screens/Onboarding_screen1.dart';

import '../../controllers/Constants/appColors/appColors..dart';
class Splashtodo extends StatefulWidget {
  const Splashtodo({super.key});

  @override
  State<Splashtodo> createState() => _SplashtodoState();
}

class _SplashtodoState extends State<Splashtodo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Appcolors.primereydark,
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
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                         //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    SizedBox(height: 130,),
                  Image.asset(AppImgaes.checkimg,width: 83,height: 83,),
                  SizedBox(height: 30,),
                  Image.asset(AppImgaes.check2 ),
                  SizedBox(height: 230,),
                  Textwidget(text: 'v 1.0.0', fontsize: 20, color: Appcolors.whitecolork)
                ],
              ),
            )
          ],
        ),

    );
  }
}
