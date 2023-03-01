import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Pages/Booking/housecleaning/rooms.dart';
import 'package:property/Widgets/headwidget.dart';

class Review extends StatelessWidget {
  const Review({super.key});

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
                text: 'Review Summary'),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Divider(
                      color: kBackground,
                      height: 20.w,
                      thickness: 1,
                    ),
                  ),
                  inside2(t1: 'Total', t2: '86 birr'),
                ],
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            ChangePayment(
              img: 'lib/images/chapa.jpg',
              name: 'Chapa',
            )
          ],
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
                  return const Review();
                }));
              },
            ),
          ),
        )),
      ),
    );
  }
}

class ChangePayment extends StatelessWidget {
  final String img;
  final String name;
  const ChangePayment({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.w,
      ),
      width: 330.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15)),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 19.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 130.w,
          ),
          Text(
            'Change',
            style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}

class inside2 extends StatelessWidget {
  final String t1;
  final String t2;
  const inside2({
    Key? key,
    required this.t1,
    required this.t2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t1,
            style: GoogleFonts.poppins(
                fontSize: 18.sp, color: Colors.grey.withOpacity(0.65)),
          ),
          Text(t2,
              style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black)),
        ],
      ),
    );
  }
}

class insidecontainer extends StatelessWidget {
  final String text1;
  final String text2;
  const insidecontainer({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: GoogleFonts.poppins(
                fontSize: 18.sp, color: Colors.grey.withOpacity(0.65)),
          ),
          Text(text2,
              style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black)),
        ],
      ),
    );
  }
}
