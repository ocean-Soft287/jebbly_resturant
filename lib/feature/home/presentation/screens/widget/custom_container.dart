import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class ReusableContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback? onTap;

  const ReusableContainer({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // تنفيذ الفعل عند الضغط لو موجود
      child: Container(
        padding: EdgeInsets.all(10.w),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.mainColor),
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Image.asset(imagePath, width: 24.w, height: 24.h),
            SizedBox(width: 10.w),
            Text(
              text,
              style: GoogleFonts.gelasio(
                color: AppColors.kblackcolor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
