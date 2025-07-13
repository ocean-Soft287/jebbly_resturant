import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/images/image (1).png"),
                ),

                Positioned(
                  top: 65,
                  left: (MediaQuery.of(context).size.width - 346) / 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: 346,
                      height: 119,
                      decoration: BoxDecoration(
                        color: AppColors.kwhitecolor,
                        borderRadius: BorderRadius.circular(19),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Image.asset("assets/images/image (2).png"),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Demo Restauranti",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "New cairo ",
                                style: GoogleFonts.gelasio(
                                  color: Color(0xffA3A1A1),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(Icons.star, color: AppColors.mainColor),
                                  Text(
                                    " 4.4 ",
                                    style: GoogleFonts.gelasio(
                                      color: AppColors.kblackcolor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " / ",
                                    style: GoogleFonts.gelasio(
                                      color: AppColors.kblackcolor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " 50 التقييمات ",
                                    style: GoogleFonts.gelasio(
                                      color: AppColors.kblackcolor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit,
                            color: AppColors.mainColor,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
  }
}