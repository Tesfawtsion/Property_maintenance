import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadWideget extends StatelessWidget {
  final String text;
  VoidCallback onpressed;
  HeadWideget({
    Key? key,
    required this.onpressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onpressed,
            child: Icon(
              Icons.arrow_back_rounded,
              size: 26.sp,
            ),
          ),
          Text(
            text,
            style:
                GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 150.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 2.w),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.more_horiz_rounded,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
