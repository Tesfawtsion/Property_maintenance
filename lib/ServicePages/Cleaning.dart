import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Widgets/headwidget.dart';
import 'package:property/Widgets/listView_of_service.dart';

import '../Models/list.dart';

class Cleaning extends StatefulWidget {
  const Cleaning({super.key, required this.title, required this.selected});
  final title;
  final selected;
  @override
  State<Cleaning> createState() => _CleaningState();
}

class _CleaningState extends State<Cleaning> {
  final pageController = PageController();
  final resturant = Resturant.generatResturant();
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
                text: widget.title),
            Container(
                color: Colors.transparent,
                width: 360.w,
                height: 620.w,
                child: FoodListView(widget.selected, (int index) {
                  // setState(() {
                  //   widget.selected = index;
                  // });
                }, pageController, resturant)),
          ],
        ),
      ),
    );
  }
}
