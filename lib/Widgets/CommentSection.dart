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
    return Container(
      child: Column(children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.rdata.imageUrl),
            ),
            Text(widget.rdata.name),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
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
        Row(
          children: [
            Icon(
              Icons.favorite,
              size: 26.sp,
              color: Colors.red,
            ),
            Text('${widget.rdata.reaction}'),
            SizedBox(
              width: 20.w,
            ),
            Text(widget.rdata.week),
          ],
        )
      ]),
    );
  }
}
