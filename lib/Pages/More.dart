import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/ServicePages/Cleaning.dart';
import 'package:property/Widgets/headwidget.dart';

import '../Widgets/service.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadWideget(
              onpressed: () {
                Navigator.pop(context);
              },
              text: 'Notfication',
            ),
            SizedBox(
              height: 10.w,
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
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Electronics",
                          selected: 8,
                        );
                      }));
                    },
                    icon: AntIcons.customerServiceFilled,
                    desc: 'Electronics',
                    color: Color.fromARGB(75, 250, 230, 48),
                    color1: Color.fromARGB(255, 250, 230, 48)),
                Service(
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Cleaning(
                          title: "Vehicle",
                          selected: 7,
                        );
                      }));
                    },
                    icon: AntIcons.carTwotone,
                    desc: 'Vehicle',
                    color: Color.fromARGB(75, 250, 230, 48),
                    color1: Color.fromARGB(255, 250, 230, 48)),
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Service(
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Cleaning(
                            title: "Beauty",
                            selected: 9,
                          );
                        }));
                      },
                      icon: Icons.brush_outlined,
                      desc: 'Beauty',
                      color: Color.fromARGB(75, 250, 48, 199),
                      color1: Color.fromARGB(255, 250, 48, 199)),
                  SizedBox(
                    width: 4.w,
                  ),
                  Service(
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Cleaning(
                            title: "Ac Repair",
                            selected: 10,
                          );
                        }));
                      },
                      icon: Icons.ac_unit_rounded,
                      desc: 'Ac Repair',
                      color: Color.fromARGB(71, 39, 221, 253),
                      color1: Color.fromARGB(255, 39, 221, 253)),
                  SizedBox(
                    width: 4.w,
                  ),
                  Service(
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Cleaning(
                            title: "Ferniture repair",
                            selected: 11,
                          );
                        }));
                      },
                      icon: Icons.door_sliding_rounded,
                      desc: 'Ferniture repair',
                      color: Color.fromARGB(80, 180, 131, 25),
                      color1: Color.fromARGB(255, 180, 131, 25)),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
