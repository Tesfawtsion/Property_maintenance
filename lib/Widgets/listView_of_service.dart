import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property/Models/list.dart';
import 'package:property/Models/orginal.dart';
import 'package:property/Pages/Details/Detail.dart';
import 'package:property/Pages/Details/paintingD.dart';
import 'package:property/Widgets/ServiceProviders.dart';

class FoodListView extends StatefulWidget {
  FoodListView(
      this.selected, this.callBack, this.pageController, this.resturant);
  final Function callBack;
  final Resturant resturant;
  final PageController pageController;
  final int selected;

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  List<Data> _data = [];
  @override
  Widget build(BuildContext context) {
    final category = widget.resturant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: PageView(
        controller: widget.pageController,
        onPageChanged: (index) => widget.callBack(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (widget.selected == 0) {
                        setState(() {
                          _data = Data.generatAllDatas();
                        });
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
                      } else if (widget.selected == 1) {
                        setState(() {
                          _data = Data.generatCleaningData();
                        });
                      } else if (widget.selected == 2) {
                        setState(() {
                          _data = Data.generatRepairingData();
                        });
                      } else if (widget.selected == 3) {
                        setState(() {
                          _data = Data.generatpaintingData();
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaintingDetail(
                                      image: _data[index].imageUrl,
                                      jobTitle: _data[index].jobtype,
                                      name: _data[index].name,
                                      price: _data[index].price.toString(),
                                      rating: _data[index].score.toString(),
                                    )));
                      } else if (widget.selected == 4) {
                        setState(() {
                          _data = Data.generatLaundaryData();
                        });
                      } else if (widget.selected == 5) {
                        setState(() {
                          _data = Data.generatPlumbingyData();
                        });
                      } else if (widget.selected == 6) {
                        setState(() {
                          _data = Data.generatShiftingData();
                        });
                      } else if (widget.selected == 7) {
                        setState(() {
                          _data = Data.generatVehicleyData();
                        });
                      } else if (widget.selected == 8) {
                        setState(() {
                          _data = Data.generatElectronicsData();
                        });
                      } else if (widget.selected == 9) {
                        setState(() {
                          _data = Data.generatBeautyData();
                        });
                      } else if (widget.selected == 10) {
                        setState(() {
                          _data = Data.generatAcRepairData();
                        });
                      } else if (widget.selected == 11) {
                        setState(() {
                          _data = Data.generatFurnitureData();
                        });
                      }
                    },
                    child: DataItem(widget
                        .resturant.menu[category[widget.selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(
                      height: 10.w,
                    ),
                itemCount:
                    widget.resturant.menu[category[widget.selected]]!.length))
            .toList(),
      ),
    );
  }
}
