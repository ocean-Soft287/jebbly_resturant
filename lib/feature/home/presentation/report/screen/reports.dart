import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/report/screen/trasaction_report.dart';

import '../../screens/widget/custom_container.dart';
import 'expenditure _report.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhitecolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "التقارير",
                      style: GoogleFonts.gelasio(
                        color: AppColors.kblackcolor,
                        fontSize: 29.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.kblackcolor,
                ),
              ],
            ),

            SizedBox(height: 40.h),
            ReusableContainer(
              imagePath: "assets/images/Group 16.png",
              text: "تقرير النفقات",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpenditureReport()),
                );
              },
            ),
            SizedBox(height: 20.h),
            ReusableContainer(
              imagePath: "assets/images/Group 16.png",
              text: "تقرير المعاملات ",
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>TrasactionReport ()),
                );
              },
            ),
            SizedBox(height: 20.h),
            ReusableContainer(
              imagePath: "assets/images/Group 16.png",
              text: " تقرير الطلب",
              onTap: () {},
            ),
            SizedBox(height: 20.h),
            ReusableContainer(
              imagePath: "assets/images/Group 16.png",
              text: " تقرير الغذاء",
              onTap: () {},
            ),
            SizedBox(height: 20.h),
            ReusableContainer(
              imagePath: "assets/images/Group 16.png",
              text: "تقرير الحملة ",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
