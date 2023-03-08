import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/Booking/housecleaning/payment.dart';
import 'package:property/Pages/Booking/housecleaning/rooms.dart';
import 'package:property/Widgets/roundedinput.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../Constants/Colors.dart';
import '../../../Widgets/headwidget.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateTime today = DateTime.now();

  get selected => false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Rooms();
                }));
              }),
              child: Icon(
                Icons.arrow_back_rounded,
                size: 26.sp,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Text(
              'Booking Detail',
              style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 15.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(
                    Icons.more_horiz_rounded,
                    size: 15.sp,
                    color: Colors.black,
                  ),
                ),
              )
            ]),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.w,
              ),
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
                      color:
                          Color.fromARGB(255, 217, 228, 228).withOpacity(0.4),
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
                    lastDay: DateTime.utc(2033, 17, 4),
                    onDaySelected: (selectedDay, focusedDay) {},
                  ),
                ),
              ),
              const RooomQuantity(txt: 'Working Hours'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  'Choose Start Time',
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              SizedBox(
                width: double.infinity,
                height: 25.w,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '12:00',
                      zone: ' AM',
                      select: () {},
                    ),
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '10:00',
                      zone: ' PM',
                      select: () {},
                    ),
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '2:00',
                      zone: ' AM',
                      select: () {},
                    ),
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '2:00',
                      zone: ' AM',
                      select: () {},
                    ),
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '2:00',
                      zone: ' AM',
                      select: () {},
                    ),
                    SizedBox(width: 10.w),
                    selectTime(
                      selected: selected,
                      clock: '2:00',
                      zone: ' AM',
                      select: () {},
                    ),
                    SizedBox(width: 5.w),
                  ],
                ),
              ),
              Row(
                children: [
                  RoundedInputFeild(
                      hintText: 'Enter Promo Code',
                      onChanged: ((value) {}),
                      text: 'Promo Code'),
                  Padding(
                    padding: EdgeInsets.only(top: 20.w, left: 10.w),
                    child: Container(
                      width: 30.w,
                      height: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.4)),
                      child: Icon(
                        Icons.add,
                        color: kPrimaryColor,
                        size: 20.sp,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.w,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.w),
          width: 310.w,
          height: 80.w,
          child: Center(
            child: ContinueButton(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Paymnet();
                }));
              },
            ),
          ),
        )),
      ),
    );
  }
}

class selectTime extends StatelessWidget {
  const selectTime({
    Key? key,
    required this.selected,
    required this.clock,
    required this.zone,
    required this.select,
  }) : super(key: key);

  final selected;
  final String clock;
  final String zone;
  final VoidCallback select;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: select,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
        width: 60.w,
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(10),
            color: selected ? kPrimaryColor : Colors.white),
        child: Center(
          child: Row(children: [
            Text(
              clock,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: selected ? Colors.white : kPrimaryColor),
            ),
            Text(
              zone,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: selected ? Colors.white : kPrimaryColor),
            ),
          ]),
        ),
      ),
    );
  }
}
