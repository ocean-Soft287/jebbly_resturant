import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class Customnotficaton extends StatefulWidget {
  const Customnotficaton({super.key});

  @override
  State<Customnotficaton> createState() => _CustomnotficatonState();
}

class _CustomnotficatonState extends State<Customnotficaton> {
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
        Icon(Icons.notification_add, color: AppColors.mainColor),
        SizedBox(width: 5),

        Text(
          '  إشعار',
          style: GoogleFonts.gelasio(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 190),

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
