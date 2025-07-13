import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';

class ResturanSetting extends StatefulWidget {
  const ResturanSetting({super.key});

  @override
  State<ResturanSetting> createState() => _ResturanSettingState();
}

class _ResturanSettingState extends State<ResturanSetting> {
  bool isNightMode = false;

  void toggleNightMode(bool value) {
    setState(() {
      isNightMode = value;
    });
  }

  String selectedType = 'نباتي';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    SizedBox(width: 110.w),
                    Text(
                      "إعدادات المطعم ",
                      style: GoogleFonts.gelasio(
                        fontSize: 18.sp,
                        color: AppColors.kblackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  الشعار ",
                    style: GoogleFonts.gelasio(
                      fontSize: 15.sp,
                      color: AppColors.kblackcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 171.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
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
                    child: Image.asset("assets/images/Group (1).png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          " اسم المطعم (English)  ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          " Al Agha Restaurant ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          " رقم الاتصال ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          " 01010456872   ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "  عنوان  (English) ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          " شارع التسعين الشمالي     ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "   الحد الأدني للمبلغ الطلب  ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "0.5",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "  علامة  ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Container(
                            width: 240,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: AppColors.mainColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "علامة",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.mainColor,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                            ),
                            child: Text(
                              " يضيف ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          " عنوان ميتا (English) ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "  وصف ميتا (English) ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  "ضبط خصائص المطعم",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  " أختر نوع المطعم الذي يمثل مؤسستك بشكل أفضل  ",
                  style: TextStyle(fontSize: 16, color: Color(0xff95969A)),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 90.h,
                  width: double.infinity,
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
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Container(
                            width: 240,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: AppColors.mainColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.mainColor,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                            ),
                            child: Text(
                              " يضيف ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    " المطابخ ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 130.h,
                  width: double.infinity,
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
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "المطابخ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          " Al Agha Cuisine ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "  نوع الغذاء",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text('نباتي'),
                          value: 'نباتي',
                          groupValue: selectedType,
                          activeColor: AppColors.mainColor,
                          onChanged: (value) {
                            setState(() {
                              selectedType = value.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text('غير نباتي'),
                          value: 'غير نباتي',
                          groupValue: selectedType,
                          activeColor: AppColors.mainColor,
                          onChanged: (value) {
                            setState(() {
                              selectedType = value.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 170.h,
                  width: double.infinity,
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
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "  ضريبة السلع والخدمات ",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
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
                      SizedBox(height: 10),
                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "ضريبة السلع والخدمات",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 250.h,
                  width: double.infinity,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "    تناول الطعام في المكان ",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
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
                      SizedBox(height: 10),
                      Text(
                        "    Minimum Time ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "   for Dine - in - order ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Container(
                        width: 321,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "وقت الجدول الزمني",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 300.h,
                  width: double.infinity,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الاحد",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الاثنين",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الثلاثاء",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الاربعاء",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الخميس",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            " يوم الجمعه",
                            style: GoogleFonts.gelasio(
                              fontSize: 15.sp,
                              color: AppColors.kblackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.add, size: 30, color: AppColors.mainColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 37.png"),
                      SizedBox(width: 8),
                      Text(
                        " ترتيب الجدول الزمني ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 49.png"),
                      SizedBox(width: 8),
                      Text(
                        "  توصيل  ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 50.png"),
                      SizedBox(width: 8),
                      Text(
                        "  أدوات المائدة  ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 37.png"),
                      SizedBox(width: 8),
                      Text(
                        "   يسلب ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 37.png"),
                      SizedBox(width: 8),
                      Text(
                        "  أمر الأشتراك  ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 80.h,
                  width: double.infinity,
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
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset("assets/images/Group 37.png"),
                      SizedBox(width: 8),
                      Text(
                        "   ترتيب المثيل ",
                        style: GoogleFonts.gelasio(
                          fontSize: 15.sp,
                          color: AppColors.kblackcolor,
                          fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "   غلاف المطعم",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  text: "تحديث",
                  textColor: AppColors.kwhitecolor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
