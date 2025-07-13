import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: height * 1.05,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Vector (1).png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.05),
                Center(
                  child: Image.asset(
                    "assets/images/android_12_logo.png",
                    width: width * 0.5,
                    height: width * 0.5,
                  ),
                ),
                Text(
                  "تسجيل الدخول",
                  style: GoogleFonts.gelasio(
                    color: AppColors.kwhitecolor,
                    fontSize: width * 0.075,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  " فقط لصاحب المطعم",
                  style: GoogleFonts.gelasio(
                    color: AppColors.kwhitecolor,
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                CustomContainer(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
