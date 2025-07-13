
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../constans/app_colors.dart';
import '../../constans/responsve_font.dart';


class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? hintText;
  final Widget? prefix;
  final Widget? subfix;
  final dynamic obscureText;
  final FormFieldValidator<String>? validator;
  final Color fillColor;
  final Color borderColor;
  final double paddingN;
  const CustomTextFormField({
    super.key,
    this.controller,
    this.textInputType = TextInputType.text,
    this.hintText,
    this.prefix,
    this.validator,
    this.subfix,
    this.obscureText,
    this.fillColor =  Colors.white,
    this.borderColor = const Color(0xff9E9E9E),
    this.paddingN=8
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:  widget.paddingN),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.subfix,
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: widget.borderColor,width: 1),
          ),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.zillaSlab(
            color: const Color(0xff949494),
            fontSize: getFontSize(context, 13),
            fontWeight: FontWeight.w700,
          ),
          fillColor: widget.fillColor, // استخدام الـ fillColor
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: widget.borderColor,width: 1),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: AppColors.mainAppColor,width: 2),
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
          prefixIcon: widget.prefix,
        ),
        keyboardType: widget.textInputType,
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
      ),
    );
  }
}



