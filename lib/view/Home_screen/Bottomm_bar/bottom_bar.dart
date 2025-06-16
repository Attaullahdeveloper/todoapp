import 'package:flutter/material.dart';
import 'package:todoapp/controllers/Constants/Appassets/appIcons.dart';
import 'package:todoapp/controllers/Constants/appColors/appColors..dart';
import 'package:todoapp/view/Home_screen/Home_page/Home_view.dart';
import 'package:todoapp/view/Home_screen/Task_page.dart';
import 'package:todoapp/view/Home_screen/Time_view.dart';
import 'package:todoapp/view/Home_screen/setting_view.dart';
class Bottomapp1 extends StatefulWidget {
  const Bottomapp1({super.key});

  @override
  State<Bottomapp1> createState() => _Bottomapp1State();
}

class _Bottomapp1State extends State<Bottomapp1> {
  int selectedindex=0;
  final List pages=[
    HomeView(),
    TaskPage(),
    TimeView(),
    SettingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolors.primereylihgt,
        type: BottomNavigationBarType.fixed,//to fix animation---------------------------------
        selectedItemColor: Appcolors.bottom,
        unselectedItemColor: Appcolors.whitecolork,
        iconSize: 30,
        currentIndex: selectedindex,
        onTap: (index){
          selectedindex=index;
          setState(() {

          });
        },
        // showSelectedLabels: false,
        // selectedIconTheme: IconThemeData(size: 32.0,color: Appcolors.whitecolork),
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.bottom1,),),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.bottom2)),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.bottom3)),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.bottom4)),label: '')
      ],
      ),
    );
  }
}
