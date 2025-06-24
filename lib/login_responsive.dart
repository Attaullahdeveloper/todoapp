import 'package:flutter/material.dart';
import 'package:todoapp/controllers/Constants/Appassets/appimages.dart';
import 'package:todoapp/controllers/Constants/appColors/appColors..dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';
import 'package:todoapp/response_widget.dart';
import 'package:todoapp/response_widget.dart';
class LoginResponsive extends StatelessWidget {
  const LoginResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff041643),
      body:
      ResponseWidget(
          desktop: Stack(
            children: [
              Image.asset(AppImgaes.responsive),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200,),
                    child:
                    Row(
                      children: [
                      Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue, // Circle border color
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue, // Inner filled dot
                          ),
                        ),
                      ),
                    ),
                        SizedBox(width: 10,),
                        Text('Circles',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                        ),)
                      ],
                  )),
                  SizedBox(height: 200,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200),
                    child: Text('Login into\nyour account',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200),
                    child: Text('Let us make the circle bigger!',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.grey.shade700
                    ),),
                  )

                ],
              ),
              // big container----------------------------
           SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 650,top: 300),
                child: Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',style: TextStyle(fontSize: 20,color: Colors.black
                        ),),
                        Container(
                          height: 42,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade300,
                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Text('Password',style: TextStyle(fontSize: 20,color: Colors.black
                        ),),
                        Container(
                          height: 42,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade300
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),

                        Row(
                          children: [
                            Text('Dont have an account?sign up',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 50,),
                            Container(
                              height: 42,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blueAccent,

                              ),
                              child: Center(
                                child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18),),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          mobile: SizedBox(),
          tab: SizedBox()),
    );
  }
}
