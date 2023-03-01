import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Constants/Colors.dart';
import 'package:property/Pages/Booking/housecleaning/reviewsummary.dart';
import 'package:property/Pages/Booking/housecleaning/rooms.dart';
import 'package:property/Widgets/headwidget.dart';

class Paymnet extends StatelessWidget {
  const Paymnet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        body: Column(
          children: [
            HeadWideget(
                onpressed: () {
                  Navigator.pop(context);
                },
                text: 'Payment Methods'),
            PaymentSelector(
              img: 'lib/images/chapa.jpg',
              name: 'Chapa',
            ),
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

class PaymentSelector extends StatelessWidget {
  final String img;
  final String name;
  const PaymentSelector({
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
      width: 340.w,
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
          SelectableIcon(
            size: 24.w,
            color: kPrimaryColor,
            selectedColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}

class SelectableIcon extends StatefulWidget {
  final double size;
  final Color color;
  final Color selectedColor;

  const SelectableIcon({
    Key? key,
    required this.size,
    required this.color,
    required this.selectedColor,
  }) : super(key: key);

  @override
  _SelectableIconState createState() => _SelectableIconState();
}

class _SelectableIconState extends State<SelectableIcon> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: _isSelected ? widget.selectedColor : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.color,
            width: 2.0,
          ),
        ),
        child: Icon(
          Icons.circle,
          color: _isSelected ? kPrimaryColor : Colors.transparent,
          size: widget.size * 0.6,
        ),
      ),
    );
  }
}
