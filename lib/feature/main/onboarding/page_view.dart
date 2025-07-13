import 'package:flutter/material.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/login_screen.dart';
import 'package:jeebly/feature/main/onboarding/page_one.dart';
import 'package:jeebly/feature/main/onboarding/page_three.dart';
import 'package:jeebly/feature/main/onboarding/page_two.dart';
import 'package:jeebly/feature/main/onboarding/widget/custom_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: _controller,
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(active: index == 0),
              SizedBox(width: 5),
              CustomIndicator(active: index == 1),
              SizedBox(width: 5),
              CustomIndicator(active: index == 2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  if (index == 2) {
                    // Go to login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  } else {
                    // Go to next page
                    _controller.animateToPage(
                      index + 1,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.linear,
                    );
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    index == 2 ? "Login" : "Next",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
