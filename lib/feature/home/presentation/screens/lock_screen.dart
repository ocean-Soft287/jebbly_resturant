import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_catagory_list.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

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
                child: Center(
                  child: Text(
                    "تاريخ الطلب ",
                    style: GoogleFonts.gelasio(
                      color: AppColors.mainColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 390,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF3A9A9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        children: [
                          Text(
                            "اليوم",
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(Icons.lock, color: Colors.black, size: 20),
                              SizedBox(width: 5),
                              Text(
                                "4",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 90),
                      Column(
                        children: [
                          Text(
                            "هذا الأسبوع",
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(Icons.lock, color: Colors.black, size: 20),
                              SizedBox(width: 5),
                              Text(
                                "10",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 90),
                      Column(
                        children: [
                          Text(
                            "هذا الشهر",
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(Icons.lock, color: Colors.black, size: 20),
                              SizedBox(width: 5),
                              Text(
                                "11",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          
              CategoryList(),
              
              Padding(
                padding: const EdgeInsets.all(12),
                child: Divider(color: Color(0xffD5DADD,),
                thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color:AppColors.kwhitecolor,
                    border: Border.all(
                    color: AppColors.kwhitecolor,
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6, 
                      offset: Offset(0, 3), 
                    ),
                  ],
                  ),
                  child: Center(child: Image.asset("assets/images/Group 19.png")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
