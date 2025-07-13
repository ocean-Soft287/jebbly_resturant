import 'package:flutter/material.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? AppColors.mainColor : Colors.grey,
      ),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}