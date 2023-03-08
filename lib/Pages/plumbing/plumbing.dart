import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/header.dart';

import '../../Widgets/roundinpute1.dart';

class Plumbing extends StatelessWidget {
  const Plumbing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadWideget1(onpressed: () {}, text: 'Plumbing Repairing'),
          SizedBox(
            height: 10.w,
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text(
                'Enter the tnumber of pipes and the damage',
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                ),
              )),
          RoundedInputFeild1(
            hintText: '',
            onChanged: (String value) {},
            text: 'Number of water Pipes',
          ),
          SizedBox(
            height: 10.w,
          ),
          RoundedInputFeild1(
            hintText: '',
            onChanged: (String value) {},
            text: 'Damage Occured',
          ),
        ],
      ),
    );
  }
}
