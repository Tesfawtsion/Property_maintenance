import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Models/list.dart';
import 'package:property/Models/orginal.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Resturant resturant;
  FoodList(this.callBack, this.resturant, this.selected);
  @override
  Widget build(BuildContext context) {
    final category = resturant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.w),
      height: 60.w,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () => callBack(index),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Text(
                    category[index],
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color:
                            selected == index ? Colors.white : kPrimaryColor),
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
