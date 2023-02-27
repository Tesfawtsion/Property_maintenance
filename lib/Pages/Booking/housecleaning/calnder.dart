import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/Booking/housecleaning/rooms.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../Widgets/headwidget.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadWideget(
                onpressed: () {
                  Navigator.pop(context);
                },
                text: 'Booking Detail'),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text(
                'Select Date',
                style: GoogleFonts.poppins(
                    fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 228, 228).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 0.3.w, color: Colors.grey.withOpacity(0.4))),
                width: 330.w,
                height: 330.w,
                child: TableCalendar(
                    headerStyle: HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    calendarStyle: CalendarStyle(),
                    rowHeight: 45,
                    focusedDay: today,
                    firstDay: DateTime.utc(2019, 27, 2),
                    lastDay: DateTime.utc(2033, 17, 4)),
              ),
            ),
            const RooomQuantity(txt: 'Working Hours'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(
                'Choose Start Time',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp, fontWeight: FontWeight.bold, height: 1.5),
              ),
            ),
            Container(),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 25.w),
          width: 310.w,
          height: 100.w,
          child: Center(
            child: ContinueButton(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Calander();
                }));
              },
            ),
          ),
        )),
      ),
    );
  }
}
