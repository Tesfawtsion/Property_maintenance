import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class headline1 extends StatelessWidget {
  final VoidCallback clicked;
  const headline1({
    Key? key,
    required this.clicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Special Offers',
            style:
                GoogleFonts.inter(fontSize: 13.sp, fontWeight: FontWeight.w700),
          ),
          GestureDetector(
            onTap: clicked,
            child: Text('See All',
                style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 24, 202))),
          )
        ],
      ),
    );
  }
}
