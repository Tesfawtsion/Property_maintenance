import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';

import '../Models/orginal.dart';

class DataItem extends StatelessWidget {
  DataItem(this.data);
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      height: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.w),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(data.imageUrl), fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.circular(20.w)),
            width: 120.w,
            height: 120.w,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 20.r, left: 10.r, right: 10.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data.name,
                        style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.withOpacity(0.8),
                            height: 1.5)),
                    Icon(
                      Icons.bookmark_border_rounded,
                      size: 25.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  data.jobtype,
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: data.highLight ? kPrimaryColor : Colors.black,
                      height: 1.5),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    Text(
                      '${data.price}',
                      style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.w,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                    Text('4.5',
                        style: GoogleFonts.inter(
                            fontSize: 13.sp, fontWeight: FontWeight.bold)),
                    Text('|,',
                        style: GoogleFonts.inter(
                            fontSize: 13.sp, fontWeight: FontWeight.bold)),
                    Text('4,354 Reviews',
                        style: GoogleFonts.inter(
                            fontSize: 13.sp, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
