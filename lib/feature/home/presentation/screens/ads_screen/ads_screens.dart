import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/add_eat.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/banner.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_stack.dart';

class AdsScreens extends StatelessWidget {
  const AdsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
          
            children: [
              CustomStack(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "جميع الأطعمة",
                      style: GoogleFonts.gelasio(
                        color: AppColors.kblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/images/Group.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, right: 8),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: 75,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "الجميع",
                          style: GoogleFonts.gelasio(
                            color: AppColors.kwhitecolor,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "Demo Category",
                      style: GoogleFonts.gelasio(
                        color: AppColors.kblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8, top: 15, left: 8),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 348,
                  height: 112,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: Color(0xffFFFBFB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/image (3).png"),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Demo Category",
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(Icons.star, color: AppColors.mainColor),
                              Text(
                                " 4.4",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.kblackcolor,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "100 EGP",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  decorationThickness: 2,
                                  fontSize: 11,
                                  color: Color(0xffD9D9D9),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "120.00\$",
                                style: GoogleFonts.gelasio(
                                  color: AppColors.mainColor,
                                  fontSize: 11.sp,
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
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BannerScreen()),
                  );
                },
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.mainColor,
                      child: Image.asset("assets/images/Group 23.png"),
                    ),
                  ),
                ),
              ),

            GestureDetector(
              onTap: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>AddEat ()),
                  );

              },
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.mainColor,
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: AppColors.kwhitecolor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
