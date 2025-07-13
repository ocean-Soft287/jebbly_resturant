import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_text_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.kwhitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    " تغيير كلمه المرور ",
                    style: GoogleFonts.gelasio(
                      color: AppColors.mainColor,
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Image.asset(
                "assets/images/forgot-password 1.png",
                width: width * 0.6,
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "البريد الالكتروني",
                      keyboardType: TextInputType.text,
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: " كلمه المرور القديمه",
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      prefixIcon: Icons.password,
                    ),
                    SizedBox(height: height * 0.015),
                    CustomTextField(
                      hintText: "كلمه المرور الحديثه ",
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      prefixIcon: Icons.password,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: CustomButton(text: "تاكيد", onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
