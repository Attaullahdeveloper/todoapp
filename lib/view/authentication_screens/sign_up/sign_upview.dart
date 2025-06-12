import 'package:flutter/material.dart';

import '../../../controllers/Constants/Appassets/appIcons.dart';
import '../../../controllers/Constants/Appassets/appimages.dart';
import '../../../controllers/Constants/appColors/appColors..dart';
import '../../../controllers/widgets/textformfield_widget.dart';
import '../../../controllers/widgets/textwidget.dart';
class SignUpview extends StatefulWidget {
  const SignUpview({super.key});

  @override
  State<SignUpview> createState() => _SignUpviewState();
}

class _SignUpviewState extends State<SignUpview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImgaes.checkimg,
                      width: 83,
                      height: 83,)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Textwidget(text: 'Welcome back to Do IT', fontsize: 25, color: Appcolors.whitecolork)),
                  ],
                ),
            
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Textwidget(text: 'create and account and join us', fontsize: 18, color: Appcolors.whitecolork,)),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: TextformfieldWidget(hinttext: 'Full Name', prefixicon: Icon(Icons.account_circle_sharp),
                      suffixicon: SizedBox(),
                    )
            
                ),
                SizedBox(height: 8,),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: TextformfieldWidget(hinttext: 'E - mail', prefixicon: Icon(Icons.email),
                      suffixicon: SizedBox(),
                    )
            
                ),
                SizedBox(height: 8,),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: TextformfieldWidget(hinttext: 'Password', prefixicon: Icon(Icons.lock),
                      suffixicon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
            
                    )
            
                ),
            
                   SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    height: 42,
                    width: 348,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.lightbutton,
                    ),
                    child: Center(
                      child: Textwidget(text: 'sign in', fontsize: 18, color: Appcolors.whitecolork),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      Text('Dont have an account?',style: TextStyle(
                        fontSize: 14,
                        color: Appcolors.whitecolork,
                      ),),
                      TextButton(onPressed: (){}, child: Textwidget(text: 'sign up', fontsize: 14, color: Appcolors.smalltext),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Textwidget(text: 'sign in with :', fontsize: 14, color: Appcolors.whitecolork),
                    SizedBox(width: 30,),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.whitecolork
                      ),
                      child:Center(
                        child: Icon(Icons.apple,size: 30,color: Colors.grey,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.whitecolork
                      ),
                      child:Center(
                        child: ImageIcon(AssetImage(Appicons.google),size: 30,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
