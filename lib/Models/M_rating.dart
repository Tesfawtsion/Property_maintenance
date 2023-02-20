class RatingData {
  String name;
  String desc;
  String imageUrl;
  String week;
  num reaction;
  num star;
  RatingData(
    this.imageUrl,
    this.week,
    this.desc,
    this.name,
    this.star,
    this.reaction,
  );
  static List<RatingData> generatAllRatingDatas() {
    return [
      RatingData(
          'lib/images/p1.jpg',
          '3 weeks ago',
          'amezing, this is what i was looking for',
          'tesfawtsion shimelis',
          5,
          342),
      RatingData(
          'lib/images/p1.jpg',
          '3 weeks ago',
          'amezing, this is what i was looking for',
          'tesfawtsion shimelis',
          5,
          342)
    ];
  }
}
