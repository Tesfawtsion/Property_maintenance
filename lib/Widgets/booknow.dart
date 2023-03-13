import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class book extends StatelessWidget {
  final String text;
  final Color color;
  final Color color2;
  final VoidCallback ontap;
  const book({
    Key? key,
    required this.text,
    required this.color,
    required this.color2,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 145.w,
        height: 55.w,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.lato(
              fontSize: 18.sp, fontWeight: FontWeight.w700, color: color2),
        )),
      ),
    );
  }
}
