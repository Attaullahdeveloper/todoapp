import 'package:flutter/material.dart';
import 'package:todoapp/controllers/widgets/textformfield_widget.dart';
import 'package:todoapp/view/Home_screen/Home_page/Home_view.dart';
import 'package:todoapp/view/authentication_screens/sign_up/sign_upview.dart';
import 'package:todoapp/view/authentication_screens/signinscreen/Signin_view.dart';
import 'package:todoapp/view/authentication_screens/verification_code/verification_view.dart';
import 'package:todoapp/view/prcatise/practice.dart';
import 'package:todoapp/view/starting_screens/onboarding_screens/Onboarding_screen1.dart';
import 'package:todoapp/view/starting_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,),
        useMaterial3: true,
      ),
      home: SignUpview()
    );
  }
}


