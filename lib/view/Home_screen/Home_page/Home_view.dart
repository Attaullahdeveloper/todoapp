import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controllers/Constants/Appassets/appimages.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';

import '../../../controllers/Constants/appColors/appColors..dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,width: 10,),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(AppImgaes.profile),
                  radius: 30,
                ),
                title: Text( 'attaullah khan',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Appcolors.whitecolork
                ),),
                subtitle: Text('attaullah@gmail.com',style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),),
                trailing: Icon(Icons.notifications,size: 30,color: Appcolors.whitecolork,),
              ),
              SizedBox(width: 20,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Textwidget(text: 'Group tasks', fontsize:16, color: Appcolors.whitecolork),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: 218,
                        height: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.whitecolork,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Design Meeting',style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              Text('Tomorrow | 10:30pm',style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.normal ,
                                color: Colors.black
                              ),),
                              SizedBox(height: 10,),
                              Stack(
                                children: [
                                  CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile3),),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile2),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 60),
                                      child: CircleAvatar(radius: 15,backgroundColor: Colors.grey,
                                      child: Icon(Icons.add),)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 218,
                        height: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.whitecolork,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Projects Meeting',style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              Text('Thursday | 11:30pm',style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.normal ,
                                color: Colors.black
                              ),),
                              SizedBox(height: 10,),
                              Stack(
                                children: [
                                  CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile3),),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile2),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 60),
                                      child: CircleAvatar(radius: 15,backgroundColor: Colors.grey,
                                      child: Icon(Icons.add),)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 218,
                        height: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.whitecolork,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Projects Meeting',style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              Text('Thursday | 11:30pm',style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.normal ,
                                color: Colors.black
                              ),),
                              SizedBox(height: 10,),
                              Stack(
                                children: [
                                  CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile3),),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile2),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 40),
                                      child: CircleAvatar(radius: 15,backgroundImage: AssetImage(AppImgaes.profile),)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 60),
                                      child: CircleAvatar(radius: 15,backgroundColor: Colors.grey,
                                      child: Icon(Icons.add),)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),// big contianers------------------------
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text('Incomplete tasks',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Appcolors.whitecolork
                ),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Appcolors.whitecolork
                  ),
                  child:Stack(
                    children:[ Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                          Text('Client meeting',style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),),
                          Text('Tomorrow | 10:30pm',style: GoogleFonts.poppins(
                            fontSize: 10,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),),
                    
                    
                    
                        ],
                      ),
                    ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 270,vertical: 5),
                          child: Icon(Icons.chevron_right,size: 40,color: Appcolors.lightbutton,))
                      ],
                  )
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Appcolors.whitecolork
                  ),
                  child:Stack(
                    children:[ Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Client meeting',style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),),
                          Text('Tomorrow | 10:30pm',style: GoogleFonts.poppins(
                            fontSize: 10,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),),



                        ],
                      ),
                    ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 270,vertical: 5),
                          child: Icon(Icons.chevron_right,size: 40,color: Appcolors.lightbutton,))
                      ],
                  )
                ),
              ),
              //small containers----------------------------------------------------
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text('Completed tasks',style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Appcolors.whitecolork
                ),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Appcolors.whitecolork
                    ),
                    child:Stack(
                      children:[
                        Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('Client meeting',style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),),
                            Text('Tomorrow | 10:30pm',style: GoogleFonts.poppins(
                              fontSize: 10,
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500,
                            ),),



                          ],
                        ),
                      ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 270,vertical: 5),
                            child: Icon(Icons.chevron_right,size: 40,color: Appcolors.lightbutton,)),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                            child: CircleAvatar(radius: 10,
                            backgroundColor: Colors.greenAccent,
                            child: Icon(Icons.check,size: 15,color: Colors.white,),)
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Appcolors.whitecolork
                    ),
                    child:Stack(
                      children:[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Client meeting',style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),),
                              Text('Tomorrow | 10:30pm',style: GoogleFonts.poppins(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                              ),),



                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 270,vertical: 5),
                            child: Icon(Icons.chevron_right,size: 40,color: Appcolors.lightbutton,)),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                            child: CircleAvatar(radius: 10,
                              backgroundColor: Colors.greenAccent,
                              child: Icon(Icons.check,size: 15,color: Colors.white,),)
                        ),
                      ],
                    )
                ),
              ),



            ],
          )
        ],
      ),
    );
  }
}
