import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import 'package:jeebly/feature/home/presentation/screens/home_screen/add_adds.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_card.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_list_view.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  bool isNightMode = false;

  void toggleNightMode(bool value) {
    setState(() {
      isNightMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 20.w),
                height: 45.h,
                color: AppColors.mainColor,
                width: double.infinity,
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Image.asset(
                      "assets/images/android_12_logo.png",
                      width: 40.w,
                      height: 70.h,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notification_add,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.w),
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  height: 73.h,
                  decoration: BoxDecoration(
                    color: AppColors.kwhitecolor,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "المطعم مغلق مؤقتا",
                        style: GoogleFonts.gelasio(
                          color: AppColors.mainColor,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: isNightMode,
                        onChanged: toggleNightMode,
                        inactiveThumbColor: Colors.black,
                        activeColor: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
              ),
              CustomCard(),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/images/Ellipse 2.png",
                  width: 100.w,
                  height: 100.h,
                ),
              ),

              Center(child: Image.asset("assets/images/Group 11.png")),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  "تريد الحصول علي تسليط الضوء؟",
                  style: GoogleFonts.gelasio(
                    color: Color(0xff334257),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  "قم بإنشاء إعلانات ليتم إبرازها علي التطبيق ومتصفح الويب",
                  style: GoogleFonts.gelasio(
                    color: Color(0xff334257),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Ellipse 3.png",
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(width: 80.w),
                  CustomButton(
                    width: 130.w,
                    height: 36.h,
                    text: "إنشاء إعلانات",
                    textColor: AppColors.kwhitecolor,
                    onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddAdds()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              StatusList(
                labels: ["قيد الإنتظار", "مؤكد", "طبخ", "جاهز للتسليم"],
                counts: [5, 10, 2, 7],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Group 10.png",
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(
                    "assets/images/Group 9.png",
                    width: 50.w,
                    height: 50.h,
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Image.asset(
                  "assets/images/Line 2.png",
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
