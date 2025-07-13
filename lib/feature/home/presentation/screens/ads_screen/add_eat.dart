import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_text_field.dart';
import 'package:jeebly/feature/home/presentation/screens/ads_screen/resturan_setting.dart';

class AddEat extends StatefulWidget {
  const AddEat({super.key});

  @override
  State<AddEat> createState() => _AddEatState();
}

class _AddEatState extends State<AddEat> {
  bool isChecked = false;
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
                    SizedBox(width: 130.w),
                    Text(
                      "أضف الطعام",
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
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                  " معلومات الغذاء ",
                  style: GoogleFonts.gelasio(
                    fontSize: 15.sp,
                    color: AppColors.kblackcolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 450.h,
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

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10, top: 15),
                        child: Text(
                          "  English ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 10),
                        child: Container(
                          color: AppColors.mainColor,
                          width: 71,
                          height: 3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5, top: 10),
                        child: Text(
                          " أدخل اسم المنتج ووصفه حسب اللغة  ",
                          style: GoogleFonts.gelasio(
                            fontSize: 15.sp,
                            color: AppColors.kblackcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CustomTextField(hintText: "اسم الغذاء"),
                      Padding(
                        padding: EdgeInsets.all(15.w),
                        child: TextFormField(
                          maxLines: null,
                          minLines: 7,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'وصف ',
                            hintStyle: TextStyle(fontSize: 14.sp),
                            labelStyle: TextStyle(fontSize: 16.sp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            alignLabelWithHint: true,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                  "  معلومات المطاعم والفئة ",
                  style: GoogleFonts.gelasio(
                    fontSize: 15.sp,
                    color: AppColors.kblackcolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  height: 450.h,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CheckboxListTile(
                          title: Text(
                            "   هل هو حرام",
                            style: GoogleFonts.gelasio(
                              fontSize: 16,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: AppColors.mainColor,
                          contentPadding: EdgeInsets.symmetric(horizontal: 3),
                        ),
                      ),
                      CustomTextField(hintText: "فئة"),
                      CustomTextField(hintText: "الفئة الفرعية"),
                      CustomTextField(hintText: "تغذية"),
                      SizedBox(height: 20),
                      Center(
                        child: CustomButton(
                          text: "يضيف",
                          onPressed: () {},
                          width: 170,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: CustomButton(
                  text: "يقدم",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResturanSetting(),
                      ),
                    );
                  },
                  width: 300,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
