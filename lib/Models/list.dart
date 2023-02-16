import 'orginal.dart';

class Resturant {
  Map<String, List<Data>> menu;
  Resturant(this.menu);
  static Resturant generatResturant() {
    return Resturant({
      'All': Data.generatRecommendedDatas(),
      'Cleaning': Data.generatPopularData(),
      'Repairing': [],
      'Painting': [],
    });
  }
}
