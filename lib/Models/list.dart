import 'orginal.dart';

class Resturant {
  String name;
  String desc;
  String WiatTime;
  String distance;
  String lable;
  String logoUrl;
  num Score;
  Map<String, List<Data>> menu;
  Resturant(this.name, this.WiatTime, this.distance, this.lable, this.logoUrl,
      this.desc, this.Score, this.menu);
  static Resturant generatResturant() {
    return Resturant('Resturant', '20-30min', '2.4km', 'Resturant',
        'lib/images/res_logo.png', 'Orange Sandwitch is Delicious', 4.5, {
      'All': Data.generatRecommendedDatas(),
      'Cleaning': Data.generatPopularData(),
      'Repairing': [],
      'Painting': [],
    });
  }
}
