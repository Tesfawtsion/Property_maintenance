import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Pages/profile_sub_pages/editepro.dart';
import 'package:property/Pages/profile_sub_pages/notification.dart';
import 'package:property/Widgets/headline.dart';
import 'package:property/Widgets/headline1.dart';
import 'package:property/Widgets/switch.dart';

import '../Widgets/notswitch.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.lato(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          height: 1.3),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.w, horizontal: 2.w),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.more_horiz_rounded,
                        size: 20.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'lib/images/p2.jpg',
                      ),
                      radius: 50.sp,
                    ),
                    Positioned(
                        top: 75.w,
                        left: 75.w,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: kPrimaryColor,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.w),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              size: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                        ))
                  ]),
                  Text(
                    'Bethelihem Mengesha',
                    style: GoogleFonts.lato(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.4.sp),
                  ),
                  Text(
                    'Bety2022@gmail.com',
                    style: GoogleFonts.lato(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.4.sp),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.w),
                child: Divider(
                  thickness: 1.2.w,
                ),
              ),
              proList(
                icon: Icons.person_outline_rounded,
                text: 'Edit Profile',
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EditPro();
                  }));
                },
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.notifications_active_outlined,
                text: 'Notification',
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Notification1();
                  }));
                },
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.payment_outlined,
                text: 'Payment',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.security_outlined,
                text: 'Security',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.language,
                text: 'Language',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              Notification_Switch(),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.privacy_tip_rounded,
                text: 'Privacy Policy',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.help_outline_sharp,
                text: 'Help Center',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.groups_outlined,
                text: 'Invite friend',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              proList(
                icon: Icons.help_outline_sharp,
                text: 'Help Center',
                ontap: () {},
              ),
              SizedBox(
                height: 20.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onDoubleTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 24.sp,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Logout',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                height: 1.28.w),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class proList extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const proList({
    Key? key,
    required this.text,
    required this.icon,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Icon(
                  icon,
                  size: 24.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.28.w),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 22.sp,
            ),
          ],
        ),
      ),
    );
  }
}
