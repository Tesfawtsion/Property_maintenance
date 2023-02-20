import 'M_rating.dart';
import 'orginal.dart';

class Reting {
  Map<String, List<RatingData>> menu;
  Reting(this.menu);
  static Reting generatReting() {
    return Reting({
      'All': RatingData.generatAllRatingDatas(),
      '1': [],
      '2': [],
      '3': [],
      '4': [],
      '5': [],
    });
  }
}
