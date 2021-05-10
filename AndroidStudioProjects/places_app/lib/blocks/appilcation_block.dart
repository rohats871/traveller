import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:places_app/services/geo_locator.dart';

class ApplicationBlock extends ChangeNotifier {
  final geoLocatorService = GeoLocatorService();

  ///Variables
  Position currentLocation;

  ApplicationBlock() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }
}
