import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/headwidget.dart';

import '../Constants/Colors.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            bottom: TabBar(
              labelColor: const Color.fromARGB(255, 94, 60, 248),
              unselectedLabelColor: const Color.fromARGB(255, 182, 179, 179),
              indicatorColor: const Color.fromARGB(255, 94, 60, 248),
              tabs: const [
                Tab(
                  text: 'Upcomming',
                ),
                Tab(
                  text: 'Completed',
                ),
                Tab(
                  text: 'Cancelled',
                ),
              ],
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'My Booking',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 160.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Wrap(
                      children: [
                        Icon(
                          Icons.search,
                          size: 25.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.w, horizontal: 2.w),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 20.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  BookingList(
                    img: AssetImage('lib/images/p1.jpg'),
                    color: Color.fromARGB(255, 76, 39, 176),
                    text1: 'Laundary Service',
                    text2: 'Alishia Blake',
                    text3: 'Upcoming',
                  )
                ],
              ),
              Column(
                children: [
                  BookingList(
                    img: AssetImage('lib/images/p3.jpg'),
                    color: Colors.green,
                    text1: 'Plumbing Repair',
                    text2: 'Tesfawtsion Shimelis',
                    text3: 'Completed',
                  )
                ],
              ),
              Column(
                children: [
                  BookingList(
                    color: Colors.red,
                    text1: 'Home Cleaning',
                    text2: 'kelly Mark',
                    text3: 'Cancelled',
                    img: AssetImage('lib/images/p2.jpg'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookingList extends StatelessWidget {
  final AssetImage img;
  final String text1;
  final String text2;
  final String text3;
  final Color color;
  const BookingList({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        height: 140.w,
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
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
              decoration: BoxDecoration(
                  image: DecorationImage(image: img, fit: BoxFit.fitWidth),
                  borderRadius: BorderRadius.circular(20.w)),
              width: 100.w,
              height: 100.w,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text2,
                        style: GoogleFonts.inter(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.8),
                            height: 1.5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.w, horizontal: 7.w),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(100, 175, 154, 252)
                                  .withOpacity(0.4),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            AntIcons.messageFilled,
                            size: 24.w,
                            color: Color.fromARGB(255, 96, 53, 253),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
                    width: 88.w,
                    height: 27.w,
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        text3,
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
