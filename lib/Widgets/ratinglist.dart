import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Models/rating.dart';

import '../Constants/Colors.dart';

class RatingList extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Reting reting;
  RatingList(this.callBack, this.reting, this.selected);
  @override
  Widget build(BuildContext context) {
    final category = reting.menu.keys.toList();
    return SizedBox(
      height: 30.w,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () => callBack(index),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15.sp,
                          color:
                              selected == index ? Colors.white : kPrimaryColor,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          category[index],
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: selected == index
                                  ? Colors.white
                                  : kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 15.w,
              ),
          itemCount: category.length),
    );
  }
}
