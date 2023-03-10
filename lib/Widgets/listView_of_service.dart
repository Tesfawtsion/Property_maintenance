import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Models/list.dart';
import 'package:property/Models/orginal.dart';
import 'package:property/Pages/Detail.dart';
import 'package:property/Widgets/ServiceProviders.dart';

class FoodListView extends StatelessWidget {
  FoodListView(
      this.selected, this.callBack, this.pageController, this.resturant);
  final Function callBack;
  final Resturant resturant;
  final PageController pageController;
  final int selected;

  @override
  Widget build(BuildContext context) {
    final category = resturant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      List<Data> _data = Data.generatAllDatas();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detail(
                                    image: _data[index].imageUrl,
                                    jobTitle: _data[index].jobtype,
                                    name: _data[index].name,
                                    price: _data[index].price.toString(),
                                    rating: _data[index].score.toString(),
                                  )));
                    },
                    child:
                        DataItem(resturant.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(
                      height: 10.w,
                    ),
                itemCount: resturant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
