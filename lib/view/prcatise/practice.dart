
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;
  nextPage() {
    if (currentPage < 3) {
      pageController.animateToPage(currentPage++,
          duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: currentPage == 2 ? TextButton(onPressed: (){},child: Text('data'),) : Padding(padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Text('Skip'),
              Spacer(),
              TextButton(
                  onPressed: () {
                    nextPage();
                  },
                  child: Text('Next'))
            ],
          ),
        ),
        body: PageView(
            controller: pageController,
            onPageChanged: (a) {
              currentPage = a;
              setState(() {});
            },
            children: [
              Center(
                child: Text('Screen-1'),
              ),
              Center(
                child: Text('Screen-2'),
              ),
              Center(
                child: Text('Screen-3'),
              ),
              Container(),
            ]));
  }
}
