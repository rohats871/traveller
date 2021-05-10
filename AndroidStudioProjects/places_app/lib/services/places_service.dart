import 'package:places_app/models/place_search.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


class PlacesServices {
  final apikey = 'AIzaSyC5abPp5yoEKXCTMRUn7RN9ClkrHRfuhJQ';

  Future <List<PlaceSearch>> getAutoComplete(String search) async {
    var url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=(cities))&key=$apikey';
    var response = await http.get(url);
    var json = convert.jsonDecode(response.body);
  }
}

