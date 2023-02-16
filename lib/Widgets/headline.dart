import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class headline extends StatelessWidget {
  final String textbold;

  headline({
    Key? key,
    required this.textbold,
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
                GoogleFonts.inter(fontSize: 13.sp, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
