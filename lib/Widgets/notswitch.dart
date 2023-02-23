import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/switch.dart';

class Notification_Switch extends StatelessWidget {
  const Notification_Switch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onDoubleTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Icon(
                  Icons.mode_night_sharp,
                  size: 24.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Dark Mode',
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.28.w),
                ),
              ],
            ),
            Switch1()
          ],
        ),
      ),
    );
  }
}
