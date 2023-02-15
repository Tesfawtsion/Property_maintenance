import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
        style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 25.w, right: 25.w),
            fillColor: Color.fromARGB(255, 248, 248, 248),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
            ),
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 182, 190, 192)),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 182, 190, 192)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      ),
    );
  }
}
