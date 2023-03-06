import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/Widgets/header.dart';

import '../../Widgets/roundedinput.dart';

class Laundry extends StatelessWidget {
  const Laundry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadWideget1(onpressed: () {}, text: 'Laundry Services'),
          Text(
            'Enter the weight and the Service you need ',
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
            ),
          ),
          Text('Weight of Total Clothings in KG',
              style: GoogleFonts.poppins(
                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
          RoundedInputFeild(
            hintText: '',
            onChanged: (String value) {},
            text: 'Weight of Total Clothings in KG',
          ),
          Text('Ironing Service',
              style: GoogleFonts.poppins(
                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
          YesNoSelection(),
          Text('Fragrance Service',
              style: GoogleFonts.poppins(
                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class YesNoSelection extends StatefulWidget {
  @override
  _YesNoSelectionState createState() => _YesNoSelectionState();
}

class _YesNoSelectionState extends State<YesNoSelection> {
  late String _selectedOption;

  final List<String> _options = ['Yes', 'No'];

  @override
  void initState() {
    super.initState();
    _selectedOption = _options[0]; // initialize with the first option
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: InputBorder.none,
        ),
        value: _selectedOption,
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
        hint: Text('Select an option'),
      ),
    );
  }
}
