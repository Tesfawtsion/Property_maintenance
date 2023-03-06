import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/Booking/housecleaning/reviewsummary.dart';
import 'package:property/Widgets/header.dart';
import 'package:property/Widgets/headwidget.dart';

import '../../../Constants/Colors.dart';

class Reciept extends StatelessWidget {
  const Reciept({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadWideget1(
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Review();
                        }));
                      },
                      text: 'E-Reciept'),
                  DropdownMenu(),
                ],
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              width: 330.w,
              height: 260.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: const [
                  insidecontainer(
                    text1: 'Service',
                    text2: 'House Cleaning',
                  ),
                  insidecontainer(text1: 'Category', text2: 'Cleaning'),
                  insidecontainer(text1: 'Workers', text2: 'Jenny Wilson'),
                  insidecontainer(
                      text1: 'Date & Time', text2: 'Dec 23.2023|10:00 AM'),
                  insidecontainer(text1: 'Woking Hours', text2: '2hours'),
                ],
              ),
            ),
            SizedBox(
              height: 15.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.w),
              width: 330.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  inside2(
                    t1: 'House Cleaning',
                    t2: '125 birr',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Promo",
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              color: kPrimaryColor.withOpacity(0.65)),
                        ),
                        Text('-34 birr',
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, color: kPrimaryColor)),
                      ],
                    ),
                  ),
                  inside2(t1: 'Total', t2: '86 birr'),
                  inside2(
                    t1: 'Payment Methods',
                    t2: 'Credit Card',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction ID',
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              color: Colors.grey.withOpacity(0.65)),
                        ),
                        Wrap(
                          children: [
                            Text('SK983325172  ',
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    color: Colors.black,
                                    height: 1.2.sp)),
                            Icon(
                              Icons.copy,
                              color: kPrimaryColor,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status',
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              color: Colors.grey.withOpacity(0.65)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kBackground.withOpacity(0.4)),
                          child: Text('Paid',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: BorderRadius.circular(20),
      underline: SizedBox(),
      value: _selectedOption,
      icon: Icon(Icons.more_vert),
      iconSize: 24,
      elevation: 10,
      style: TextStyle(color: Colors.black),
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue;
          if (_selectedOption == 'share') {
            // Perform share action
          } else if (_selectedOption == 'download') {
            // Perform download action
          } else if (_selectedOption == 'print') {
            // Perform print action
          }
        });
      },
      items: <String>['share', 'download', 'print']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              if (value == 'share')
                Icon(Icons.share)
              else if (value == 'download')
                Icon(Icons.download)
              else if (value == 'print')
                Icon(Icons.print),
              SizedBox(width: 8),
              Text(value),
            ],
          ),
        );
      }).toList(),
    );
  }
}
