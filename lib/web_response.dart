

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/response_widget.dart';
class WebResponse extends StatefulWidget {
  const WebResponse({super.key});

  @override
  State<WebResponse> createState() => _WebResponseState();
}

class _WebResponseState extends State<WebResponse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           //--------------------------------------------------------------------------
      body: ResponseWidget(
          desktop: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                height: 100,
                width: 800,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 30,),
              Container(
                height: 300,
                width: 800,
                color: Colors.orange.shade700,
                child: Center(
                  child: Text('Desktop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white),),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 240),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width:  260,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                        Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width:  260,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                        Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width:  260,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                        Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
          //-----------------------------------------------------------------------
          mobile:Column(
            children: [
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.9,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height:200,
                width: MediaQuery.of(context).size.width*0.9,
                color: Colors.orange.shade700,
                child: Center(
                  child:Text('Mobile',style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height:150,
                width: MediaQuery.of(context).size.width*0.9,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                  SizedBox(width: 5,),
                  Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),

                ],
              )
            ],
          ),
          //------------------------------------------------------------------------
          tab: Column(
            children: [
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*0.9,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height:300,
                width: MediaQuery.of(context).size.width*0.9,
                color: Colors.orange.shade700,
                child: Center(
                  child:Text('Tablet',style: TextStyle(
                      fontSize: 40,fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height:200,
                width: MediaQuery.of(context).size.width*0.9,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  SizedBox(width: 10,),
                Text('This is the web responsiveness\nand trying to implement on\ndifferent screens like\ndesktop,mobile,tab',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),

                ],
              )
            ],
          )
      ),
    );
  }
}
