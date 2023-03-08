import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/roundinpute1.dart';

import '../../Widgets/header.dart';
import '../../Widgets/roundedinput.dart';

class CarRepair extends StatelessWidget {
  const CarRepair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.w,
          ),
          HeadWideget1(onpressed: () {}, text: 'Car Repairing'),
          SizedBox(
            height: 10.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text(
              'Enter the type and series of the car tobe repaird ',
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text('Card Brand',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 5.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w, top: 10.w, bottom: 10.w),
            child: CarBrand(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text('Series/Model',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w, top: 10.w, bottom: 10.w),
            child: CarBrand(),
          ),
          SizedBox(
            height: 10.w,
          ),
          RoundedInputFeild1(
            hintText: '',
            onChanged: (String value) {},
            text: 'Plate Number',
          ),
        ],
      ),
    );
  }
}

class CarBrand extends StatefulWidget {
  @override
  _CarBrandState createState() => _CarBrandState();
}

class _CarBrandState extends State<CarBrand> {
  late String _selectedOption;

  final List<String> _options = ['Ford F-Series', 'Toyota', 'lambo', 'BMW'];

  @override
  void initState() {
    super.initState();
    _selectedOption = _options[0]; // initialize with the first option
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(10),
          underline: SizedBox(),
          value: _selectedOption,
          alignment: AlignmentDirectional.topStart,
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
          items: _options
              .map((option) => DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          hint: SizedBox(
            width: 260.w,
          ),
        ),
      ),
    );
  }
}
