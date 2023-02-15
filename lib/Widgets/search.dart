import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
        style: TextStyle(fontSize: 20.sp),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 25.w, right: 25.w),
            fillColor: Color.fromARGB(255, 225, 229, 235),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
            ),
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 161, 156, 156)),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 221, 215, 215)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      ),
    );
  }
}
