import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../Constants/Colors.dart';
import '../../Models/rating.dart';
import '../../Widgets/booknow.dart';
import '../../Widgets/listview_comment.dart';
import '../../Widgets/ratinglist.dart';
import '../Booking/housecleaning/rooms.dart';
import '../Pagecontrol.dart' as control;

class CarRepairDetail extends StatefulWidget {
  String image;

  String jobTitle;

  String name;

  String price;

  String rating;

  CarRepairDetail(
      {required this.image,
      required this.jobTitle,
      required this.name,
      required this.price,
      required this.rating});

  @override
  State<CarRepairDetail> createState() => _CarRepairDetailState();
}

class _CarRepairDetailState extends State<CarRepairDetail> {
  var selected = 0;

  final pageController = PageController();

  final reting = Reting.generatReting();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.w),
              width: double.infinity,
              height: 300.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const control.Pagecontroler()));
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 25.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.jobTitle,
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.5.sp),
                  ),
                  Icon(
                    Icons.bookmark_border_rounded,
                    size: 24.sp,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  widget.name,
                  style: GoogleFonts.lato(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                    Text(widget.rating,
                        style: GoogleFonts.inter(
                            fontSize: 11.sp, fontWeight: FontWeight.bold)),
                    Text('(4,354 Reviews)',
                        style: GoogleFonts.inter(
                            fontSize: 11.sp, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
                  width: 88.w,
                  height: 27.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(143, 79, 25, 180),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      widget.jobTitle,
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  size: 24.sp,
                  color: kPrimaryColor,
                ),
                Text(
                  '4kilo,Addis Abeba',
                  style: GoogleFonts.inter(fontSize: 11.sp, height: 2.5.sp),
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  widget.price,
                  style: GoogleFonts.lato(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor),
                ),
                Text(
                  '(Floor Price)',
                  style: GoogleFonts.lato(fontSize: 11.sp, height: 1.5.sp),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
              child: Divider(
                color: Color.fromARGB(255, 218, 211, 211),
                thickness: 1.5,
                height: 2.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'About Me',
                style: GoogleFonts.lato(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                width: double.infinity,
                child: ReadMoreText(
                  'Flutter is Google???s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  colorClickableText: kPrimaryColor,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor),
                  lessStyle: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            RatingList((int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            }, reting, selected),
            SizedBox(
              height: 15.w,
            ),
            SizedBox(
              width: 360.w,
              height: 300.w,
              child: CommentListView(selected, (int index) {
                setState(() {
                  selected = index;
                });
              }, pageController, reting),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            book(
              text: "Message",
              color: Color.fromARGB(255, 209, 203, 203).withOpacity(0.4),
              color2: kPrimaryColor,
              ontap: () {},
            ),
            book(
              text: "Book now",
              color: kPrimaryColor,
              color2: Colors.white,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Rooms();
                }));
              },
            )
          ]),
        ),
      ),
    );
  }
}
