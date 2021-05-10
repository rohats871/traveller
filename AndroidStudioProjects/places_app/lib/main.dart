import 'package:flutter/material.dart';
import 'package:places_app/blocks/appilcation_block.dart';
import 'package:places_app/screens/famous_places.dart';
import 'package:places_app/screens/home_screen.dart';
import 'package:places_app/screens/map.dart';
import 'package:places_app/screens/saved_places_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(Places());

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationBlock>(
      create: (context) => ApplicationBlock(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          Map.id: (context) => Map(),
          SavedPlaces.id: (context) => SavedPlaces(),
          UserScreen.id: (context) => UserScreen(),
        },
      ),
    );
  }
}
