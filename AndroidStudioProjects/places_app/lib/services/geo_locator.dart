import 'package:geolocator/geolocator.dart';

class GeoLocatorService {
  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
