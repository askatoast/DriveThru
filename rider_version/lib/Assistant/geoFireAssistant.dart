import 'package:rider_version/Models/nearbyAvailableDrivers.dart';

class GeoFireAssistant {
  static List<NearbyAvailableDrivers> nearbyAvailableDriversList = [];

  static void removeDriverFromList(String key) {
    int index =
        nearbyAvailableDriversList.indexWhere((element) => element.key == key);

    nearbyAvailableDriversList.removeAt(index);
  }

  static void updatedDriverNearbyLocation(NearbyAvailableDrivers drivers) {
    int index = nearbyAvailableDriversList
        .indexWhere((element) => element.key == drivers.key);

    nearbyAvailableDriversList[index].longitude = drivers.longitude;
    nearbyAvailableDriversList[index].latitude = drivers.latitude;
  }
}
