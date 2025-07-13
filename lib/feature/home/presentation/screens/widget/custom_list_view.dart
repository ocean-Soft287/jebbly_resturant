import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeebly/core/constant/app_colors.dart';

class StatusList extends StatefulWidget {
  final List<String> labels;
  final List<int> counts;

  const StatusList({Key? key, required this.labels, required this.counts})
      : super(key: key);

  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center( // This will center the ListView on the screen
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.labels.length,
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSelected ? AppColors.mainColor : Color(0xffCFDDE6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,   
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        widget.labels[index],
                        style: GoogleFonts.gelasio(
                          color: AppColors.kblackcolor,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 14,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFEB0B0),
                        ),
                        child: Center(
                          child: Text(
                            widget.counts[index].toString(),
                            style: GoogleFonts.gelasio(
                              color: AppColors.kblackcolor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
