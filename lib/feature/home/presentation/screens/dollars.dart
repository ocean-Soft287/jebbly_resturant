import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_cartt.dart';
import 'package:jeebly/feature/home/presentation/screens/widget/custom_text.dart';

class Dollarsscreen extends StatelessWidget {
  Dollarsscreen({super.key});

  List<Map<String, dynamic>> cardData = [
    {
      'imagepath': "assets/images/Vector (10).png",
      'title': '0.00\$',
      'subtitle': ' الرصيد القابل للسحب ',
      'color': Colors.black,
    },
    {
      'imagepath': "assets/images/icons8-withdraw-48 1.png",
      'title': '0.00\$',
      'subtitle': ' النقديه في متناول اليد',
      'color': Colors.black,
    },
    {
      'imagepath': "assets/images/Vector (10).png",
      'title': '0.00\$',
      'subtitle': '  تم سحبها بالفعل',
      'color': Colors.black,
    },
    {
      'imagepath': "assets/images/Group (2).png",
      'title': '0.00\$',
      'subtitle': ' في انتظار السحب',
      'color': Colors.black,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                child: Center(
                  child: Text(
                    "محفظة",
                    style: GoogleFonts.gelasio(
                      fontSize: 18.sp,
                      color: AppColors.kblackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.mainColor,
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
                                "Payable Balance",
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
                    ],
                  ),
                ),
              ),

              GridView.builder(
                padding: EdgeInsets.all(8.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 8.h,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  final item = cardData[index];
                  return CustomCarddd(
                    imagePath: item['imagepath'],
                    title: item['title'],
                    subtitle: item['subtitle'],
                    iconColor: item['color'],
                  );
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 80,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '0.00\$',
                        style: GoogleFonts.gelasio(
                          fontSize: 18.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'اجمالي الربح',
                        style: GoogleFonts.gelasio(
                          fontSize: 18.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              TabSwitchExample(),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      ' تاريخ المعاملات',
                      style: GoogleFonts.gelasio(
                        fontSize: 18.sp,
                        color: AppColors.kblackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      ' رؤيه الكل ',
                      style: GoogleFonts.gelasio(
                        fontSize: 18.sp,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Icon(Icons.border_bottom, color: Colors.grey, size: 35),
                      Text(
                        '  لم يتم العثور علي اي بيانات ',
                        style: GoogleFonts.gelasio(
                          fontSize: 18.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
