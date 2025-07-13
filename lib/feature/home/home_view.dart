import 'package:flutter/material.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/screens/home_screen/Home_screen.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/ads_screens.dart';
import 'package:jeebly/feature/home/presentation/screens/dollars.dart';
import 'package:jeebly/feature/home/presentation/screens/lock_screen.dart';

import 'presentation/screens/show_bottom/show_model_bottom_seet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    Homeview(),
    LockScreen(),
     AdsScreens(),
     Dollarsscreen(),
     ShowModelBottomSeet(),
  ];

  final List<String> iconPaths = [
    'assets/images/Vector (2).png',
    'assets/images/Group 21.png',
    'assets/images/Vector (4).png',
    'assets/images/Vector (5).png',
    'assets/images/Vector (6).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: kBottomNavigationBarHeight + 20,
        decoration: BoxDecoration(
          color: const Color(0xff302D2D),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(iconPaths.length, (index) {
            return Expanded(child: buildNavItem(iconPaths[index], index));
          }),
        ),
      ),
    );
  }

  Widget buildNavItem(String imagePath, int index) {
    final bool isSelected = currentIndex == index;

    if (index == 2) {
      return Transform.translate(
        offset: const Offset(0, -30),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff302D2D),
          ),
          child: IconButton(
            icon: Image.asset(
              imagePath,
              height: 24,
              color: isSelected ? AppColors.mainColor : Colors.white,
            ),
            onPressed: () {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      );
    }

    return IconButton(
      icon: Image.asset(
        imagePath,
        height: 40,
        color: isSelected ? AppColors.mainColor : Colors.white,
      ),
      onPressed: () {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
