import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Service extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color color1;
  VoidCallback onpressed;
  final String desc;
  Service({
    Key? key,
    required this.onpressed,
    required this.icon,
    required this.desc,
    required this.color,
    required this.color1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 25.sp,
            child: Icon(
              icon,
              size: 25.sp,
              color: color1,
            ),
          ),
          Text(
            desc,
            style: GoogleFonts.inter(color: Colors.black, fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}
