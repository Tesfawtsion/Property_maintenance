import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Constants/Colors.dart';

class TextFeildContainer extends StatelessWidget {
  final child;
  const TextFeildContainer({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      width: 280.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 223, 220, 220).withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
