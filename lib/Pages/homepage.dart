import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Pages/More.dart';
import 'package:property/ServicePages/Cleaning.dart';
import '../Widgets/Category_list.dart';
import '../Widgets/headline.dart';
import '../Widgets/headline1.dart';
import '../Widgets/listView_of_service.dart';
import '../Widgets/service.dart';
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
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              actions: [
                Row(
                  children: [
                    propic(),
                    SizedBox(
                      width: 180.w,
                    ),
                    icons()
                  ],
                ),
              ],
              floating: true,
              pinned: true,
              snap: false,
              excludeHeaderSemantics: true,
              expandedHeight: 248.w,
              flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                children: [
                  SizedBox(
                    height: 65.h,
                  ),
                  headline1(),
                  SizedBox(
                    width: double.infinity,
                    height: 160.w,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Advertisement(
                            boldtext: '30% Off',
                            img: AssetImage('lib/images/Advert.jpg'),
                            mdtext: 'Today Special',
                            smtext: 'Get discount',
                            smtext1: 'for every order today',
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Advertisement(
                            boldtext: '30% Off',
                            img: AssetImage('lib/images/Advert.jpg'),
                            mdtext: 'Today Special',
                            smtext: 'Get discount',
                            smtext1: 'for every order today',
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ];
        },
        body: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              SizedBox(
                height: 10.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: headline(
                  textbold: 'Service',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Service(
                    color: Color.fromARGB(40, 183, 98, 223),
                    desc: 'Cleaning',
                    icon: Icons.cleaning_services_rounded,
                    color1: Color.fromARGB(255, 157, 22, 219),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Cleaning",
                          selected: 1,
                        );
                      }));
                    },
                  ),
                  Service(
                    color: Color.fromARGB(50, 252, 199, 39),
                    desc: 'Repairing',
                    icon: Icons.home_repair_service_rounded,
                    color1: Color.fromARGB(255, 252, 198, 39),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Repairing",
                          selected: 2,
                        );
                      }));
                    },
                  ),
                  Service(
                    color: Color.fromARGB(57, 253, 169, 43),
                    desc: 'Painting',
                    icon: Icons.format_paint_rounded,
                    color1: Color.fromARGB(255, 253, 169, 43),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Painting",
                          selected: 3,
                        );
                      }));
                    },
                  ),
                  Service(
                    color: Color.fromARGB(52, 16, 112, 190),
                    desc: 'Laundry',
                    icon: Icons.local_laundry_service_rounded,
                    color1: Color.fromARGB(255, 16, 112, 190),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Laundry",
                          selected: 4,
                        );
                      }));
                    },
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
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Plumbing",
                          selected: 5,
                        );
                      }));
                    },
                  ),
                  Service(
                    color: const Color.fromARGB(59, 76, 194, 80),
                    desc: 'Shifting',
                    icon: Icons.local_shipping_rounded,
                    color1: Color.fromARGB(255, 76, 194, 80),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Shifting",
                          selected: 6,
                        );
                      }));
                    },
                  ),
                  Service(
                    color: const Color.fromARGB(40, 25, 7, 90),
                    desc: 'more',
                    icon: Icons.more_horiz_outlined,
                    color1: Color.fromARGB(255, 25, 7, 90),
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0),
                child: headline(
                  textbold: 'Most Popular Service',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              FoodList((int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              }, resturant, selected),
              SizedBox(
                height: 10.w,
              ),
              Expanded(
                child: SizedBox(
                    width: 360.w,
                    height: 470.w,
                    child: FoodListView(selected, (int index) {
                      setState(() {
                        selected = index;
                      });
                    }, pageController, resturant)),
              ),
            ],
          ),
        ));
  }
}

class icons extends StatelessWidget {
  const icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.notification_add_outlined,
          color: Colors.grey,
        ),
        SizedBox(
          width: 2.w,
        ),
        Icon(
          Icons.bookmark_add_outlined,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5.w,
        ),
      ],
    );
  }
}

class propic extends StatelessWidget {
  const propic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.w,
          backgroundImage: AssetImage('lib/images/p2.jpg'),
        ),
        SizedBox(
          width: 5.w,
        ),
        Wrap(
          direction: Axis.vertical,
          children: [
            Text(
              'Good Morning',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                  color: Colors.black),
            ),
            Text('Selam Abera',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

class Advertisement extends StatelessWidget {
  final AssetImage img;
  final String boldtext;
  final String mdtext;
  final String smtext;
  final String smtext1;

  const Advertisement({
    Key? key,
    required this.img,
    required this.boldtext,
    required this.mdtext,
    required this.smtext,
    required this.smtext1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 114, 152, 153).withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(-3, 5),
            ),
          ],
          image: DecorationImage(fit: BoxFit.fitWidth, image: img)),
      width: 330.w,
      height: 150.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.w,
            ),
            Text(
              boldtext,
              style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              mdtext,
              style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25.w,
            ),
            Text(
              smtext,
              style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              smtext1,
              style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
