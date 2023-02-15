import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class headline extends StatelessWidget {
  final String textbold;
  final String text;
  headline({
    Key? key,
    required this.textbold,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textbold,
            style:
                GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w700),
          ),
          Text(text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 21, 24, 202)))
        ],
      ),
    );
  }
}
