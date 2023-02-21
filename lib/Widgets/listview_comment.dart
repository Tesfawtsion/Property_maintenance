import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Models/rating.dart';
import 'package:property/Widgets/CommentSection.dart';

class CommentListView extends StatelessWidget {
  CommentListView(
      this.selected, this.callBack, this.pageController, this.reting);
  final Function callBack;
  final Reting reting;
  final PageController pageController;
  final int selected;

  @override
  Widget build(BuildContext context) {
    final category = reting.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: CommentSection(
                        reting.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(
                      height: 12.w,
                    ),
                itemCount: reting.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
