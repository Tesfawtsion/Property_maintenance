import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Constants/Colors.dart';

class TextFeildContainer1 extends StatelessWidget {
  final childd;
  const TextFeildContainer1({
    this.childd,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      width: 295.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
      decoration: BoxDecoration(
          border: Border.all(width: 0.4, color: Colors.grey.withOpacity(0.4)),
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: childd,
    );
  }
}
