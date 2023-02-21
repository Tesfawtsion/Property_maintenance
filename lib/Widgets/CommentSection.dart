import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Models/rating.dart';
import 'package:readmore/readmore.dart';

import '../Constants/Colors.dart';
import '../Models/M_rating.dart';

class CommentSection extends StatefulWidget {
  final RatingData rdata;
  CommentSection(this.rdata);
  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 1.w,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(widget.rdata.imageUrl),
            radius: 24.r,
          ),
          Text(
            widget.rdata.name,
            style:
                GoogleFonts.lato(fontSize: 17.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 55.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.w),
            decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: Center(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15.sp,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    '${widget.rdata.star}',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 7.w,
      ),
      Padding(
        padding: EdgeInsets.only(left: 23.sp),
        child: Text(
          widget.rdata.desc,
          style: GoogleFonts.lato(fontSize: 13.sp),
        ),
      ),
      SizedBox(
        height: 5.w,
      ),
      Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          Icon(
            Icons.favorite,
            size: 26.sp,
            color: Colors.red,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            '${widget.rdata.reaction}',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            widget.rdata.week,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: Colors.grey.withOpacity(0.8)),
          ),
        ],
      )
    ]);
  }
}
