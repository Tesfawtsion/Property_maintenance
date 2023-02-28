import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/textfeild.dart';

class RoundedInputFeild extends StatelessWidget {
  final String text;
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputFeild({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          TextFeildContainer(
            child: TextField(
              onChanged: onChanged,
              decoration:
                  InputDecoration(hintText: hintText, border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
