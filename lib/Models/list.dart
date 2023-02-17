import 'orginal.dart';

class Resturant {
  Map<String, List<Data>> menu;
  Resturant(this.menu);
  static Resturant generatResturant() {
    return Resturant({
      'All': Data.generatAllDatas(),
      'Cleaning': Data.generatCleaningData(),
      'Repairing': Data.generatRepairingData(),
      'Painting': Data.generatpaintingData(),
      'Laundary': Data.generatLaundaryData(),
      'Plumbing': Data.generatPlumbingyData(),
      'Shifting': Data.generatShiftingData(),
      'Vehicle': Data.generatVehicleyData(),
      'Electronics': Data.generatElectronicsData(),
      'Beauty': Data.generatBeautyData(),
      'Ac Repair': Data.generatAcRepairData(),
      'Ferniture repair': Data.generatFurnitureData(),
    });
  }
}
