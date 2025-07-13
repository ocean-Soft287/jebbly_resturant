import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';
import 'package:jeebly/feature/auth/presentation/screen/widget/custom_bottom.dart';
import 'package:jeebly/feature/home/home_view.dart';

import 'custom_text_field.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.025,
        ),
        width: width * 0.8,
        decoration: BoxDecoration(
          color: AppColors.kwhitecolor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              hintText: "بريد الإلكتروني ",
              prefixIcon: Icons.email,
              autofillHints: [AutofillHints.email],
            ),
            SizedBox(height: height * 0.015),
            CustomTextField(
              hintText: "كلمة المرور  ",
              prefixIcon: Icons.password,
              autofillHints: [AutofillHints.password],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  Checkbox(
                    value: isRememberMeChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isRememberMeChecked = value ?? false;
                      });
                    },
                    activeColor: AppColors.mainColor,
                  ),
                  Text(
                    "تذكرني",
                    style: GoogleFonts.gelasio(
                      color: AppColors.kblackcolor,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "هل نسيت كلمة السر؟",
                    style: GoogleFonts.gelasio(
                      color: AppColors.mainColor,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            CustomButton(
              text: "تسجيل الدخول",
              color: AppColors.mainColor,
              textColor: Colors.white,
              width: width,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
