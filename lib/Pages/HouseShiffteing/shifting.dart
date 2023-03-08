import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/headwidget.dart';
import '../Booking/housecleaning/calnder.dart';
import '../Booking/housecleaning/rooms.dart';

class Shiffting extends StatefulWidget {
  const Shiffting({super.key});

  @override
  State<Shiffting> createState() => _ShifftingState();
}

class _ShifftingState extends State<Shiffting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 244, 244),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadWideget(
                  onpressed: () {
                    Navigator.pop(context);
                  },
                  text: 'House Shiffting'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                child: Text(
                  'Enter the Number of Items you want to shift',
                  style: GoogleFonts.inter(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5.w,
              ),
              const RooomQuantity(
                txt: 'Table',
              ),
              const RooomQuantity(
                txt: 'Chair',
              ),
              const RooomQuantity(
                txt: 'Television',
              ),
              const RooomQuantity(
                txt: 'Carpet',
              ),
              const RooomQuantity(
                txt: 'Sofa',
              ),
              const RooomQuantity(
                txt: 'Bed',
              ),
              const RooomQuantity(
                txt: 'Washing Machine',
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: 310.w,
          height: 50.w,
          child: ContinueButton(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Calander();
              }));
            },
          ),
        )),
      ),
    );
  }
}
