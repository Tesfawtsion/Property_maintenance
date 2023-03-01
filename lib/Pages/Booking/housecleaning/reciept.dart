import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Pages/Booking/housecleaning/reviewsummary.dart';
import 'package:property/Widgets/headwidget.dart';

class Reciept extends StatelessWidget {
  const Reciept({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HeadWideget(
                onpressed: () {
                  Navigator.pop(context);
                },
                text: 'E-Reciept'),
            Container(
              width: 330.w,
              height: 250.w,
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
                  insidecontainer(text1: 'Woking Hours', text2: '2hours')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
