import 'package:flutter/material.dart';
import 'package:todoapp/controllers/Constants/Appassets/appimages.dart';
import 'package:todoapp/controllers/widgets/textformfield_widget.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';

import '../../../controllers/Constants/appColors/appColors..dart';
class verificationview extends StatefulWidget {
  const verificationview({super.key});

  @override
  State<verificationview> createState() => _verificationviewState();
}

class _verificationviewState extends State<verificationview> {
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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Align(
                    alignment: Alignment.center,
                    child: Textwidget(text:'Verifiy account', fontsize: 30, color: Appcolors.whitecolork,
                    )),
             SizedBox(height: 30,),
                Container(
                  width: 310,
                  height: 468,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.05),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade300.withOpacity(0.6),
                        Colors.grey.shade300.withOpacity(0.2),
                        // Color(0xFFD9D9D9), // 100%
                        // Color(0x66D9D9D9), // 40%
                        // Color(0x1AD9D9D9), // 10%
                       // Color(0xffD9D9D9),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
            
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Image.asset(AppImgaes.check2,),
                      SizedBox(height: 30,),
                      Textwidget(text: 'By verifying your account , your \ndata will be secured and be''\ndefault you are accepting \nour terms and policies', fontsize: 16, color: Appcolors.whitecolork),
                     SizedBox(height: 90,),
                      Container(
                        height: 52,
                        width: 274,
            
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Appcolors.whitecolork,
                        ),
                        child:TextformfieldWidget(hinttext: 'Verification code', prefixicon: SizedBox(), suffixicon: SizedBox()),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 52,
                          width: 274,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolors.lightbutton,

                          ),
                          child: Center(
                            child: TextButton(onPressed: (){}, child: Textwidget(text: 'Verify ', fontsize: 18, color: Appcolors.whitecolork)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            
            
              ],
            ),
          )

        ],
      ),
    );
  }
}
