import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/switch.dart';
import '../../Widgets/header.dart';
import '../../Widgets/notswitch.dart';

class Notification1 extends StatelessWidget {
  const Notification1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadWideget1(
          onpressed: () {
            Navigator.pop(context);
          },
          text: 'Notification',
        ),
        List_of_not(
          desc: 'General Notification',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'Sound',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'Vibrate',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'Special Offers',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'Promo and Discount',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'payments',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'Cashback',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'App Update',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'New Service Availabe',
        ),
        SizedBox(
          height: 15.w,
        ),
        List_of_not(
          desc: 'New Tip Availble',
        ),
        SizedBox(
          height: 15.w,
        ),
      ],
    );
  }
}

class List_of_not extends StatelessWidget {
  final String desc;
  const List_of_not({
    Key? key,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            desc,
            style: GoogleFonts.lato(
                fontSize: 17.sp, fontWeight: FontWeight.w700, height: 0.5.w),
          ),
          Switch1()
        ],
      ),
    );
  }
}
