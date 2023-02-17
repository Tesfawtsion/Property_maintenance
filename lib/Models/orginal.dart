class Data {
  String name;
  String jobtype;
  String imageUrl;
  num price;
  num score;

  bool highLight;
  Data(this.imageUrl, this.jobtype, this.name, this.score, this.price,
      {this.highLight = false});
  static List<Data> generatAllDatas() {
    return [
      Data('lib/images/p3.jpg', 'House Cleaning', 'Yacob Tefaye', 4.8, 12,
          highLight: true),
      Data(
        'lib/images/p1.jpg',
        'House Painting',
        'Elias Kebede',
        3.8,
        10,
      ),
      Data(
        'lib/images/p2.jpg',
        'Plumb fixing',
        'Yared Negu',
        4.0,
        22,
      ),
      Data(
        'lib/images/p2.jpg',
        'Repairing',
        'Robel Tesfaye',
        4.1,
        32,
      )
    ];
  }

  static List<Data> generatCleaningData() {
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
        'Yared Negu',
        4.2,
        22,
      ),
      Data(
        'lib/images/p3.jpg',
        'House Cleaning',
        'Melat Tefaye',
        4.8,
        32,
      ),
    ];
  }

  static List<Data> generatRepairingData() {
    return [
      Data(
        'lib/images/p1.jpg',
        'House Repairing',
        'Robel Tesfaye',
        4.1,
        25,
      ),
      Data(
        'lib/images/p2.jpg',
        'House Repairing',
        'Chala bontu',
        4.4,
        42,
      ),
      Data(
        'lib/images/p3.jpg',
        'House Repairing',
        'Yohanis Bekele',
        4.2,
        32,
      ),
    ];
  }

  static List<Data> generatpaintingData() {
    return [
      Data(
        'lib/images/p1.jpg',
        'House painting',
        'Robel Tesfaye',
        4.1,
        25,
      ),
      Data(
        'lib/images/p2.jpg',
        'House painting',
        'Chala bontu',
        4.4,
        42,
      ),
      Data(
        'lib/images/p3.jpg',
        'House painting',
        'Yohanis Bekele',
        4.2,
        32,
      ),
    ];
  }

  static List<Data> generatLaundaryData() {
    return [
      Data(
        'lib/images/p1.jpg',
        'Laundary',
        'Robel Tesfaye',
        4.1,
        25,
      ),
    ];
  }

  static List<Data> generatPlumbingyData() {
    return [
      Data(
        'lib/images/p3.jpg',
        'Plumbing',
        'Robel Tesfaye',
        4.1,
        25,
      ),
    ];
  }

  static List<Data> generatShiftingData() {
    return [
      Data(
        'lib/images/p3.jpg',
        'Shifting',
        'Robel Tesfaye',
        4.1,
        25,
      ),
    ];
  }

  static List<Data> generatVehicleyData() {
    return [
      Data(
        'lib/images/p2.jpg',
        'Vehicle',
        'Robel Tesfaye',
        4.1,
        25,
      ),
    ];
  }

  static List<Data> generatElectronicsData() {
    return [
      Data(
        'lib/images/p2.jpg',
        'Electronics Repair',
        'Ujulu Bangada',
        4.5,
        35,
      ),
    ];
  }

  static List<Data> generatBeautyData() {
    return [
      Data(
        'lib/images/p3.jpg',
        'Beauty Salon',
        'feker Daniel',
        4.5,
        35,
      ),
    ];
  }

  static List<Data> generatAcRepairData() {
    return [
      Data(
        'lib/images/p2.jpg',
        'Ac Repair',
        'Biruk Natnael',
        4.5,
        15,
      ),
    ];
  }

  static List<Data> generatFurnitureData() {
    return [
      Data(
        'lib/images/p1.jpg',
        'Furniture Repair',
        'Ujulu Bangada',
        4.5,
        35,
      ),
    ];
  }
}
