import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/More.dart';
import '../Widgets/Category_list.dart';
import '../Widgets/headline.dart';
import '../Widgets/headline1.dart';
import '../Widgets/listView_of_service.dart';
import '../Widgets/search.dart';
import '../Widgets/service.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Models/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var selected = 0;
  final pageController = PageController();
  final resturant = Resturant.generatResturant();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 12.w,
              ),
              CircleAvatar(
                radius: 22.w,
                backgroundImage: AssetImage('lib/images/p2.jpg'),
              ),
              SizedBox(
                width: 2.w,
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    'Good Morning',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700, fontSize: 15.sp),
                  ),
                  Text('Selam Abera',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500, fontSize: 14.sp)),
                ],
              ),
              SizedBox(
                width: 150.w,
              ),
              Icon(Icons.notification_add_rounded),
              SizedBox(
                width: 5.w,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Search(),
          headline1(),
          SizedBox(
            width: 330.w,
            height: 150.w,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 114, 152, 153)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(-3, 5),
                        ),
                      ],
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('lib/images/Advert.jpg'))),
                  width: 330.w,
                  height: 140.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.w,
                        ),
                        Text(
                          '30%',
                          style: GoogleFonts.inter(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Text(
                          'Today Special',
                          style: GoogleFonts.inter(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Text(
                          'Get discount for every order',
                          style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'only valid for today',
                          style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: headline(
              textbold: 'Service',
              text: 'See All',
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Service(
                color: Color.fromARGB(40, 183, 98, 223),
                desc: 'Cleaning',
                icon: Icons.cleaning_services_rounded,
                color1: Color.fromARGB(255, 157, 22, 219),
                onpressed: () {},
              ),
              Service(
                color: Color.fromARGB(50, 252, 199, 39),
                desc: 'Repairing',
                icon: Icons.home_repair_service_rounded,
                color1: Color.fromARGB(255, 252, 198, 39),
                onpressed: () {},
              ),
              Service(
                color: Color.fromARGB(57, 253, 169, 43),
                desc: 'Painting',
                icon: Icons.format_paint_rounded,
                color1: Color.fromARGB(255, 253, 169, 43),
                onpressed: () {},
              ),
              Service(
                color: Color.fromARGB(52, 16, 112, 190),
                desc: 'Laundry',
                icon: Icons.local_laundry_service_rounded,
                color1: Color.fromARGB(255, 16, 112, 190),
                onpressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Service(
                color: const Color.fromARGB(59, 243, 51, 37),
                desc: 'Plumbing',
                icon: Icons.plumbing_rounded,
                color1: Color.fromARGB(255, 243, 51, 37),
                onpressed: () {},
              ),
              Service(
                color: const Color.fromARGB(59, 76, 194, 80),
                desc: 'Shifting',
                icon: Icons.local_shipping_rounded,
                color1: Color.fromARGB(255, 76, 194, 80),
                onpressed: () {},
              ),
              Service(
                color: const Color.fromARGB(40, 25, 7, 90),
                desc: 'more',
                icon: Icons.more_horiz_outlined,
                color1: Color.fromARGB(255, 25, 7, 90),
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const More();
                  }));
                },
              ),
              CircleAvatar(
                radius: 30.r,
                backgroundColor: Colors.transparent,
              )
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: headline(
              textbold: 'Most Popular Service',
              text: 'See All',
            ),
          ),
          FoodList((int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, resturant, selected),
          SizedBox(
              width: 360.w,
              height: 180.h,
              child: FoodListView(selected, (int index) {
                setState(() {
                  selected = index;
                });
              }, pageController, resturant)),
          SizedBox(
            height: 10.w,
          )
        ],
      ),
    );
  }
}
