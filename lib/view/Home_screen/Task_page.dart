import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controllers/widgets/textwidget.dart';
import 'package:todoapp/view/Home_screen/detail_page/detai_page.dart';

import '../../controllers/Constants/appColors/appColors..dart';
class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>Detailpage()));
        },
        child: CircleAvatar(
          backgroundColor: Appcolors.bottom,
          radius: 25,
          child: Icon(Icons.add,weight: 50,),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 15),
             child: Row(
               children: [
                 Container(
                   width: 210,
                   height: 42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                       color: Color(0xFF1E40AF),
                   ),
                   child: TextFormField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'search by task list',
                       hintStyle: GoogleFonts.poppins(
                         color: Colors.grey.shade500,
                         fontSize: 12,
                       ),
                       contentPadding: EdgeInsets.all(16),
                       suffixIcon: Icon(Icons.search,color: Colors.grey.shade500,)
                     ),
                     cursorHeight: 15,
                     cursorWidth: 2,
                   ),
                 ),
                 SizedBox(width: 6,),
                 Container(
                   width: 114,
                   height: 42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xFF1E40AF),
                   ),
                   child: TextFormField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'sort by',
                       hintStyle: GoogleFonts.poppins(
                         fontSize: 12,
                         color: Colors.grey.shade500,
                       ),
                       contentPadding: EdgeInsets.all(16),
                      // prefixIcon: Icon(Icons.filter_list,size: 15,color: Colors.grey.shade500,),
                       suffixIcon: Icon(Icons.arrow_drop_down,size: 25,color: Colors.grey.shade500,),
                     ),
                     cursorHeight: 15,
                     cursorWidth: 2,
                   ),
                 ),
               ],
             ),
           ),
              SizedBox(height: 40,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Textwidget(text: 'Task List', fontsize:18, color: Appcolors.whitecolork)),
              SizedBox(height: 30,),
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
              SizedBox(height: 30,),
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
              SizedBox(height: 30,),
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
              SizedBox(height: 30,),
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
            ],
          )
        ],
      ),
    );
  }
}
