import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/change_Password.dart';
import 'package:jeebly/feature/auth/presentation/screen/edite_profile.dart';

import '../widget/custom-notficaton.dart';
import '../widget/lightmode.dart';

class InductionAccount extends StatelessWidget {
  const InductionAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: 80.h),
          Center(
            child: Text(
              "حساب تعريفي",
              style: GoogleFonts.gelasio(
                color: AppColors.kwhitecolor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 80.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.kwhitecolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/kitchen.png",
                        height: 100.h,
                        width: 100.w,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "Crispy Bread",
                        style: GoogleFonts.gelasio(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kblackcolor,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 50,
                    child: Column(
                      children: [
                        Text(
                          "150 يوم ",
                          style: GoogleFonts.gelasio(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          " منذ الأنضمام ",
                          style: GoogleFonts.gelasio(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC7BEBE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 50,
                    child: Column(
                      children: [
                        Text(
                          "14  ",
                          style: GoogleFonts.gelasio(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "  إجمالي الطلب ",
                          style: GoogleFonts.gelasio(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC7BEBE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(top: 220, right: 20, child: NightModeToggle()),
                  Positioned(top: 280, right: 20, child: Customnotficaton()),
                  Positioned(
                    right: 20,
                    top: 340,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePassword(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        textDirection: TextDirection.rtl,
                        children: [
                          Icon(Icons.lock, color: AppColors.mainColor),
                          SizedBox(width: 1),
                          Text(
                            "  تغيير كلمة المرور  ",
                            style: GoogleFonts.gelasio(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.kblackcolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 390,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditeProfile(),
                          ),
                        );
                      },

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        textDirection: TextDirection.rtl,
                        children: [
                          Icon(Icons.edit, color: AppColors.mainColor),
                          SizedBox(width: 1),
                          Text(
                            "    تحرير الملف الشخصي  ",
                            style: GoogleFonts.gelasio(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.kblackcolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 430,
                    child: GestureDetector(
                      onTap: () {
                        showLanguageDialog(context);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        textDirection: TextDirection.rtl,
                        children: [
                          Image.asset("assets/images/Group 80.png"),
                          SizedBox(width: 1),
                          Text(
                            "     اللغه    ",
                            style: GoogleFonts.gelasio(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.kblackcolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('اختار اللغة'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset(
                'assets/images/Mask group (1).png',
                width: 30,
                height: 30,
              ),
              title: Text('English'),
              onTap: () {
                Navigator.of(context).pop();
                // ممكن تحفظ اللغة هنا كمان
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/Mask group.png',
                width: 30,
                height: 30,
              ),
              title: Text('العربية'),
              onTap: () {
                Navigator.of(context).pop();
                // ممكن تحفظ اللغة هنا كمان
              },
            ),
          ],
        ),
      );
    },
  );
}
