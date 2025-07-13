import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff334257),
                ),
                child: Column(
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Image.asset("assets/images/XMLID_830_.png"),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              "اليوم",
                              style: GoogleFonts.gelasio(
                                color: AppColors.kwhitecolor,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\$0.00",

                              style: GoogleFonts.gelasio(
                                color: AppColors.kwhitecolor,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Column(
                            children: [
                              Text(
                                "هذا الأسبوع",

                                style: GoogleFonts.gelasio(
                                  color: AppColors.kwhitecolor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "\$0.00",

                                style: GoogleFonts.gelasio(
                                  color: AppColors.kwhitecolor,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50,),
                          Image.asset("assets/images/Line 1.png"),
                          SizedBox(width: 50,),
                            Column(
                            children: [
                              Text(
                                " هذا الشهر",

                                style: GoogleFonts.gelasio(
                                  color: AppColors.kwhitecolor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "\$0.00",

                                style: GoogleFonts.gelasio(
                                  color: AppColors.kwhitecolor,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}