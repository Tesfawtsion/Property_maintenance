import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadWideget1 extends StatelessWidget {
  final String text;
  VoidCallback onpressed;
  HeadWideget1({
    Key? key,
    required this.onpressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onpressed,
            child: Icon(
              Icons.arrow_back_rounded,
              size: 26.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style:
                GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
