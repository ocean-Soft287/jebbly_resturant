import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              height: 45.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kwhitecolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(Icons.arrow_forward_ios, color: AppColors.mainColor),
                  SizedBox(width: 130.w),
                  Text(
                    "إعلان",
                    style: GoogleFonts.gelasio(
                      fontSize: 18.sp,
                      color: AppColors.kblackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 90.w),
                  Switch(
                    value: isNightMode,
                    onChanged: toggleNightMode,
                    inactiveThumbColor: Colors.black,
                    activeColor: AppColors.mainColor,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15.w),
              child: Text(
                "محتوي الإعلان",
                style: GoogleFonts.gelasio(
                  fontSize: 15.sp,
                  color: AppColors.kblackcolor,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15.w),
              child: TextFormField(
                maxLines: null,
                minLines: 10,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'اكتب تعليقك',
                  hintStyle: TextStyle(fontSize: 14.sp),
                  labelStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  alignLabelWithHint: true,
                ),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                textDirection: TextDirection.rtl,
              ),
            ),

            SizedBox(height: 30.h),

            Center(
              child: CustomButton(
                width: 175.w,
                text: "نشر",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
