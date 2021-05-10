import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:places_app/blocks/appilcation_block.dart';
import 'package:places_app/constants.dart';
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

  @override
  Widget build(BuildContext context) {
    //
    final applicationBlock = Provider.of<ApplicationBlock>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          GoogleMap(
            compassEnabled: true,
            myLocationButtonEnabled: false,
            onMapCreated: _onMapCreated,
            mapToolbarEnabled: true,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(applicationBlock.currentLocation.latitude,
                  applicationBlock.currentLocation.longitude),
              zoom: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 5, right: 5),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: kConstantGoldColor,
                    border: Border.all(
                      color: kConstantGoldColor,
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    autofocus: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Location..',
                      fillColor: Colors.black,
                      focusColor: Colors.white,
                      suffixIcon: IconButton(
                        onPressed: () {
                          print('Button pressed');
                        },
                        icon: Icon(
                          LineIcons.locationArrow,
                          size: 30,
                          color: kConstantTextColor,
                        ),
                      ),
                    ),
                    onChanged: (val) {},
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.90, 0.90),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 5,
              fillColor: kConstantGoldColor,
              child: Icon(
                LineIcons.mapPin,
                color: kConstantTextColor,
                size: 30,
              ),
              padding: EdgeInsets.all(15),
              shape: CircleBorder(),
            ),
          )
        ],
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
