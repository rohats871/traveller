import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:places_app/models/place_search.dart';
import 'package:places_app/services/geo_locator.dart';
import 'package:places_app/services/places_service.dart';

class ApplicationBlock extends ChangeNotifier {
  final geoLocatorService = GeoLocatorService();
  final placesService = PlacesServices();

  ///Variables
  Position currentLocation;
  List<PlaceSearch> searchResults;

  ApplicationBlock() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }

  searchPlaces(String searchTerm) async {
    searchResults = await placesService.getAutoComplete(searchTerm);
    notifyListeners();
  }
}
