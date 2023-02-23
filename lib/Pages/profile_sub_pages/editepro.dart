import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditPro extends StatefulWidget {
  const EditPro({super.key});

  @override
  State<EditPro> createState() => _EditProState();
}

class _EditProState extends State<EditPro> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        onChanged: (value) {},
        value: true,
      ),
    );
  }
}
