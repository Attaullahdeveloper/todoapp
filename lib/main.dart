import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoapp/controllers/widgets/textformfield_widget.dart';
import 'package:todoapp/crud_operation/insert_view.dart';
import 'package:todoapp/login_responsive.dart';
import 'package:todoapp/view/Home_screen/Bottomm_bar/bottom_bar.dart';
import 'package:todoapp/view/Home_screen/Home_page/Home_view.dart';
import 'package:todoapp/view/Home_screen/Task_page.dart';
import 'package:todoapp/view/Home_screen/detail_page/confirmation_view/confirmation_view.dart';
import 'package:todoapp/view/Home_screen/detail_page/detai_page.dart';
import 'package:todoapp/view/Home_screen/setting_view.dart';
import 'package:todoapp/view/authentication_screens/sign_up/sign_upview.dart';
import 'package:todoapp/view/authentication_screens/signinscreen/Signin_view.dart';
import 'package:todoapp/view/authentication_screens/verification_code/verification_view.dart';
import 'package:todoapp/view/prcatise/practice.dart';
import 'package:todoapp/view/starting_screens/onboarding_screens/Onboarding_screen1.dart';
import 'package:todoapp/view/starting_screens/splash_screen.dart';
import 'package:todoapp/web_response.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,),
        useMaterial3: true,
      ),
      home: LoginResponsive()
    );
  }
}


