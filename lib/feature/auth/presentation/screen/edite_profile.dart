import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_text_field.dart';

class EditeProfile extends StatelessWidget {
  const EditeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.07,
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
                    "  تحرير الملف الشخصي  ",
                    style: GoogleFonts.gelasio(
                      color: AppColors.mainColor,
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              CircleAvatar(
                radius: width * 0.08,
                backgroundColor: Colors.transparent,
                child: Image.asset("assets/images/Group 11.png"),
              ),
              SizedBox(height: height * 0.015),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: " الاسم بالكامل",
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: "   رقم التلفون",
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: "  تاريخ الميلاد ",
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: "البريد الالكتروني",
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: " كلمه المرور ",
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: " المحافظه  ",
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: " انثي  ",
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomButton(
                      width: width * 0.5,
                      text: "تاكيد",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
