import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/header.dart';

class HomeNotification extends StatelessWidget {
  const HomeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.w,
            ),
            HeadWideget1(
              onpressed: () {
                Navigator.pop(context);
              },
              text: 'Notification',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'Today',
                style: GoogleFonts.inter(
                    fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Notfication_container(
              bldtext: 'Payment Successful',
              color: Color.fromARGB(255, 196, 43, 223),
              img: 'lib/images/sm1.png',
              subtxt: 'You have made a service payment',
              icon: Icons.wallet,
            ),
            SizedBox(
              height: 10.w,
            ),
            Notfication_container(
              bldtext: 'New Category Service',
              color: Color.fromARGB(255, 235, 27, 27),
              img: 'lib/images/sm4.png',
              subtxt: 'Now the new service is available',
              icon: Icons.category,
            ),
          ],
        ),
      ),
    );
  }
}

class Notfication_container extends StatelessWidget {
  final String bldtext;
  final String subtxt;
  final String img;
  final Color color;
  final IconData icon;
  const Notfication_container({
    Key? key,
    required this.bldtext,
    required this.subtxt,
    required this.img,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        width: 340.w,
        height: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 231, 229, 229).withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 43.w,
                    child: Image.asset(img)),
                Positioned(
                  top: 12.w,
                  left: 7.w,
                  child: CircleAvatar(
                    radius: 30.w,
                    backgroundColor: color,
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 25.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bldtext,
                  style: GoogleFonts.inter(
                      fontSize: 19.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5.w,
                ),
                Text(
                  subtxt,
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.withOpacity(0.6)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
