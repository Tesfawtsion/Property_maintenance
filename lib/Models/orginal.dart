class Data {
  String name;
  String jobtype;
  String imageUrl;
  num price;
  num score;

  bool highLight;
  Data(this.imageUrl, this.jobtype, this.name, this.score, this.price,
      {this.highLight = false});
  static List<Data> generatRecommendedDatas() {
    return [
      Data('lib/images/p3.jpg', 'House Cleaning', 'Yacob Tefaye', 4.8, 12,
          highLight: true),
      Data(
        'lib/images/p1.jpg',
        'House Cleaning',
        'Yacob Tefaye',
        4.8,
        12,
      ),
      Data(
        'lib/images/p2.jpg',
        'House Cleaning',
        'Yacob Tefaye',
        4.8,
        12,
      )
    ];
  }

  static List<Data> generatPopularData() {
    return [
      Data(
        'lib/images/p1.jpg',
        'House Cleaning',
        'Yacob Tefaye',
        4.8,
        12,
      ),
      Data(
        'lib/images/p2.jpg',
        'House Cleaning',
        'Yacob Tefaye',
        4.8,
        12,
      )
    ];
  }
}
