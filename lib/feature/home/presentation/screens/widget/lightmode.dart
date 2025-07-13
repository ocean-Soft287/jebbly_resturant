import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class NightModeToggle extends StatefulWidget {
  @override
  _NightModeToggleState createState() => _NightModeToggleState();
}

class _NightModeToggleState extends State<NightModeToggle> {
  bool _isNightMode = false;

  void _toggleNightMode(bool value) {
    setState(() {
      _isNightMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.dark_mode, color: AppColors.mainColor),
        SizedBox(width: 5),

        Text(
          ' الوضع المظلم',
          style: GoogleFonts.gelasio(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 150),

        Switch(
          value: _isNightMode,
          onChanged: _toggleNightMode,
          inactiveThumbColor: Colors.black,

          activeColor: AppColors.mainColor,
        ),
      ],
    );
  }
}
