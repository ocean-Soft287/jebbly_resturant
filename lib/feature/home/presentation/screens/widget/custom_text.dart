import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class TabSwitchExample extends StatefulWidget {
  const TabSwitchExample({super.key});

  @override
  State<TabSwitchExample> createState() => _TabSwitchExampleState();
}

class _TabSwitchExampleState extends State<TabSwitchExample> {
  bool isFirstSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
            GestureDetector(
              onTap: () {
                setState(() {
                  isFirstSelected = true;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'طلب سحب',
                    style: GoogleFonts.gelasio(
                      fontSize: 18.sp,
                      color: AppColors.kblackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: isFirstSelected ? 80 : 0,
                    height: 3,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 70),

     
            GestureDetector(
              onTap: () {
                setState(() {
                  isFirstSelected = false;
                });
              },
              child: Column(
                children: [
                  Text(
                    "تاريخ الدفع",
                    style: GoogleFonts.gelasio(
                      fontSize: 18.sp,
                      color: AppColors.kblackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: isFirstSelected ? 0 : 80,
                    height: 3,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
