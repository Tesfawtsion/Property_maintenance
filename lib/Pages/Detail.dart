import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Models/rating.dart';
import 'package:property/Widgets/ratinglist.dart';
import 'package:readmore/readmore.dart';

import '../Widgets/listview_comment.dart';

class Detail extends StatefulWidget {
  const Detail({
    super.key,
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
            width: double.infinity,
            height: 280.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/images/Detail.jpg'),
                    fit: BoxFit.fill)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'House Cleaning',
                style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.5.sp),
              ),
              SizedBox(
                width: 45.w,
              ),
              Icon(
                Icons.bookmark_border_rounded,
                size: 24.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Kelly Wilsom',
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
                  Text('4.5',
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
                width: 25.w,
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
                    'Cleaning',
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
                width: 25.w,
              ),
              Text(
                '200 Birr',
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
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
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
          // SizedBox(
          //     width: 360.w,
          //     height: 417.h,
          //     child: CommentListView(selected, (int index) {
          //       setState(() {
          //         selected = index;
          //       });
          //     }, pageController, reting)),
          // SizedBox(
          //   height: 10.w,
          // )
        ],
      ),
    ));
  }
}