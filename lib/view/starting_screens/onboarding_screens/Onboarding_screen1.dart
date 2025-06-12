import 'package:flutter/material.dart';
import 'package:todoapp/controllers/Constants/Appassets/appimages.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';

import '../../../controllers/Constants/appColors/appColors..dart';
class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  PageController  pageController=PageController();
  int currentindex=0;
  nextPage() {
    if (currentindex < 3) {
      pageController.animateToPage(currentindex++,
          duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20,right: 20),
        child: CircleAvatar(
          radius: 30,
        child: currentindex==3?
        IconButton(onPressed:(){


        }, icon: Icon(Icons.check),iconSize: 30,):IconButton(onPressed:(){
         nextPage();//funciton is already made above



        }, icon: Icon(Icons.arrow_forward),iconSize: 30,),
        ),
      ),
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
          PageView(
            controller: pageController,
            onPageChanged: (index){
              currentindex=index;
              setState(() {

              });
            },
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(AppImgaes.todoimg1),
                  SizedBox(height: 50,),
                  Textwidget(text: 'Plan your tasks to do, that', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'way you will stay organized', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'and you will not skip any', fontsize: 20, color: Appcolors.whitecolork),
                  //for the dots animations-----------------------------



                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(AppImgaes.todoimg2),
                  SizedBox(height: 30,),
                  Textwidget(text: 'Make a full schedule for ', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'the whole week and stay', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'organized and productive', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'for all day', fontsize: 20, color: Appcolors.whitecolork),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(AppImgaes.todoimg3),
                  SizedBox(height: 95,),
                  Textwidget(text: 'create a team task,invite', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'people and manage your', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'work together', fontsize: 20, color: Appcolors.whitecolork),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(AppImgaes.todoimg4),
                  SizedBox(height: 85,),
                  Textwidget(text: 'Your information are', fontsize: 20, color: Appcolors.whitecolork),
                  Textwidget(text: 'secure with us', fontsize: 20, color: Appcolors.whitecolork),

                   ],
                  ),

            ],
              ),
          // for the dashes animation-------------------------------
          Positioned(
            bottom: 60,
            left: 120,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index){
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    height: 6,
                    width: currentindex==index?25:10,
                    decoration: BoxDecoration(
                      color: currentindex==index?Colors.white: Colors.white54,
                      borderRadius: BorderRadius.circular(5),
                    ),);
                }
                )

            ),
          ),


        ],
      ),
    );
  }
}
