import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:places_app/blocks/appilcation_block.dart';
import 'package:places_app/constants.dart';
import 'package:places_app/models/place.dart';
import 'package:provider/provider.dart';

class Map extends StatefulWidget {
  static const String id = 'map';

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Function _onMapCreated = (GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
  };
  Completer<GoogleMapController> _mapController = Completer();

  StreamSubscription locationSubscription;

  @override
  void initState() {
    final applicationBlock =
        Provider.of<ApplicationBlock>(context, listen: false);
    locationSubscription =
        applicationBlock.selectedLocation.stream.listen((place) {
      if (place != null) {
        _gotToPlace(place);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    final applicationBlock =
        Provider.of<ApplicationBlock>(context, listen: false);
    applicationBlock.dispose();
    locationSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final applicationBlock = Provider.of<ApplicationBlock>(context);
    return Scaffold(
      backgroundColor: kConstantGoldColor,
      body: (applicationBlock.currentLocation == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                          border: Border.all(
                            color: kConstantGoldColor,
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          cursorColor: Colors.black,
                          autofocus: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '   Search Location..',
                            fillColor: Colors.black,
                            focusColor: Colors.white,
                            suffixIcon: IconButton(
                              onPressed: () {
                                print('Button pressed');
                              },
                              icon: Icon(
                                LineIcons.timesCircleAlt,
                                size: 28,
                                color: kConstantTextColor,
                              ),
                            ),
                          ),
                          onChanged: (value) =>
                              applicationBlock.searchPlaces(value),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 750,
                      child: GoogleMap(
                        onMapCreated: (GoogleMapController controller) {
                          _mapController.complete(controller);
                        },
                        myLocationEnabled: true,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                              applicationBlock.currentLocation.latitude,
                              applicationBlock.currentLocation.longitude),
                          zoom: 13,
                        ),
                      ),
                    ),
                    if (applicationBlock.searchResults != null &&
                        applicationBlock.searchResults.length != 0)
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: kConstantGoldColor.withOpacity(0.9),
                          backgroundBlendMode: BlendMode.darken,
                        ),
                      ),
                    if (applicationBlock.searchResults != null &&
                        applicationBlock.searchResults.length != 0)
                      Container(
                        height: 300,
                        child: ListView.builder(
                          itemCount: applicationBlock.searchResults.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                applicationBlock
                                    .searchResults[index].description,
                                style: TextStyle(
                                  letterSpacing: 1.2,
                                  wordSpacing: 2,
                                  color: kConstantTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                applicationBlock.setSelectedLocation(
                                    applicationBlock
                                        .searchResults[index].placeId);
                              },
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ],
            ),
    );
  }

  Future<void> _gotToPlace(Place place) async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target:
              LatLng(place.geometry.location.lat, place.geometry.location.lng),
          zoom: 14,
        ),
      ),
    );
  }
}

class Utils {
  static String mapStyle = ''' 
   [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#523735"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#c9b2a6"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#dcd2be"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ae9e90"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ff3d6e"
      },
      {
        "saturation": 100
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#93817c"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#a5b076"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#447530"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#fdfcf8"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f8c967"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#e9bc62"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e98d58"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#db8555"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#806b63"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8f7d77"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#b9d3c2"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#92998d"
      }
    ]
  }
]
   ''';
}

// Container(
//   height: 300,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(15.0),
//     color: kConstantGoldColor.withOpacity(0.6),
//     backgroundBlendMode: BlendMode.darken,
//   ),
// ),
// Container(
//   height: 300,
//   width: double.infinity,
//   child: ListView.builder(
//     itemCount: applicationBlock.searchResults.length,
//     itemBuilder: (context, index) {
//       return ListTile(
//         title: Text(
//           applicationBlock
//               .searchResults[index].description,
//           style: TextStyle(color: kConstantTextColor),
//         ),
//       );
//     },
//   ),
// ),
