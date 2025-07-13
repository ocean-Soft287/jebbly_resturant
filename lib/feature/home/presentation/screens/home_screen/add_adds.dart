import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import '../../../../auth/presentation/screen/widget/custom_text_field.dart';

class AddAdds extends StatelessWidget {
  const AddAdds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.mainColor,
                      size: 24.sp,
                    ),
                    SizedBox(width: 100),
                    Center(
                      child: Text(
                        "إعلان جديد",
                        style: GoogleFonts.gelasio(
                          color: AppColors.kblackcolor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "معلومات الفئة",
                    style: GoogleFonts.gelasio(
                      color: AppColors.kblackcolor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              CustomTextField(
                hintText: "ترويج الفيديو",
                prefixIcon: Icons.arrow_forward_ios,
              ),
              SizedBox(height: 5),
              CustomTextField(
                hintText: " صحة",
                prefixIcon: Icons.calendar_month,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.kwhitecolor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            " English",
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 50,
                            height: 3,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                      CustomTextField(hintText: " عنوان (English)"),
                      CustomTextField(hintText: " وصف (English)"),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                " تحميل الملفات",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "0/100 ",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Image.asset("assets/images/Vector (7).png"),
                            Positioned(
                              top: 10,
                              bottom: 70,
                              right: 0,
                              left: 0,
                              child: Image.asset(
                                "assets/images/Group 21 (1).png",
                              ),
                            ),
                            Positioned(
                              top: 70,

                              right: 30,
                              left: 120,
                              child: Text(
                                "انقر لتحميل",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.mainColor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,

                              right: 30,
                              left: 100,
                              child: Text(
                                "فيديو الإعلانات",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.mainColor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 35,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor,
                            ),
                            child: Image.asset("assets/images/Group 23.png"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            height: 18,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor,
                            ),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Image.asset("assets/images/Group 22.png"),
                                SizedBox(width: 3),
                                Text(
                                  " معاينة",
                                  style: GoogleFonts.gelasio(
                                    color: AppColors.kwhitecolor,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    width: 150,
                    text: "إنشاء إعلانات",
                    onPressed: () {},
                     
                    textColor: AppColors.kwhitecolor,
                  ),
                  SizedBox(width: 20),
                  CustomButton(
                    width: 150,
                    text: " إعادة ضبط",
                    onPressed: () {},
                    textColor: AppColors.kwhitecolor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
