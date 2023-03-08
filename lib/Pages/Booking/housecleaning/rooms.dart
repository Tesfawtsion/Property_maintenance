import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Pages/Booking/housecleaning/calnder.dart';
import 'package:property/Pages/Detail.dart';
import 'package:property/Widgets/headwidget.dart';

class Rooms extends StatefulWidget {
  const Rooms({super.key});

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Detail();
                    }));
                  },
                  text: 'House Cleaning'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  'Select the Number of Rooms to be cleaned',
                  style: GoogleFonts.inter(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5.w,
              ),
              const RooomQuantity(
                txt: 'Living Room',
              ),
              const RooomQuantity(
                txt: 'Terrace',
              ),
              const RooomQuantity(
                txt: 'Bed Room',
              ),
              const RooomQuantity(
                txt: 'BathRoom',
              ),
              const RooomQuantity(
                txt: 'Kitchen',
              ),
              const RooomQuantity(
                txt: 'Dining Room',
              ),
              const RooomQuantity(
                txt: 'Garage',
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

class ContinueButton extends StatelessWidget {
  final VoidCallback ontap;
  const ContinueButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: kPrimaryColor),
        width: 300.w,
        child: Center(
          child: Text(
            'Continue',
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RooomQuantity extends StatefulWidget {
  final String txt;

  const RooomQuantity({super.key, required this.txt});

  @override
  State<RooomQuantity> createState() => _RooomQuantityState();
}

class _RooomQuantityState extends State<RooomQuantity> {
  int _qty = 0;

  void _add() {
    setState(() {
      _qty += 1;
    });
  }

  void _remove() {
    setState(() {
      if (_qty > 0) _qty -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          width: 350.w,
          height: 80.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.txt,
                style: GoogleFonts.inter(
                    fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              _quantity(
                add: _add,
                remove: _remove,
                qty: _qty,
              ),
            ],
          )),
    );
  }
}

Widget _quantity(
    {required Function add, required Function remove, required int qty}) {
  return Row(
    children: <Widget>[
      CustomButton(
          iconData: Icons.remove,
          onTap: (() {
            remove();
          })),
      _boxqnt(qty),
      CustomButton(
          iconData: Icons.add,
          onTap: (() {
            add();
          })),
    ],
  );
}

Widget _boxqnt(int qty) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 2.w),
    height: 30.w,
    width: 30.w,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Text(
      qty.toString(),
      style: TextStyle(
          fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.iconData, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35.w,
        width: 35.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 226, 226).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Icon(
          iconData,
          size: 20.w,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
