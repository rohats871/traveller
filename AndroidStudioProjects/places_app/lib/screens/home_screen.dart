import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:places_app/bottom_sheet.dart';
import 'package:places_app/constants.dart';
import 'package:places_app/screens/famous_places.dart';
import 'package:places_app/screens/map.dart';
import 'package:places_app/screens/saved_places_screen.dart';

import 'Category_listview.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Map.id);
            },
            child: Icon(
              LineIcons.cog,
              color: kConstantGoldColor,
              size: 28,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Segway',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'CinzelDecorative',
              color: Color(0xFF30475e),
              letterSpacing: 3,
            ),
          ),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    LineIcons.igloo,
                    color: Color(0xFFDDD2B2),
                    size: 30,
                  ),
                ),
                IconButton(
                    tooltip: 'Location',
                    icon: Icon(
                      LineIcons.mapPin,
                      color: Color(0xFF30475e),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Map.id);
                    }),
                IconButton(
                    icon: Icon(
                      LineIcons.alternateCloudDownload,
                      color: Color(0xFF30475e),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SavedPlaces.id);
                    }),
                IconButton(
                  icon: Icon(
                    LineIcons.splotch,
                    color: Color(0xFF30475e),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, UserScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// This is the Box 1
              ///
              ///
              ///
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        colors: [Color(0x80d7e1ec), Color(0xFFb8c6db)]),
                  ),
                  height: 200,
                  width: 380,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              /// This is the Box 2
              ///the category
              ///box
              ///
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.transparent),

                  ///Here is the box color
                  height: 200,
                  width: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          child: Text(
                            'Nearby Attractions',
                            style: TextStyle(
                                fontFamily: 'CinzelDecorative',
                                fontSize: 15,
                                letterSpacing: 2,
                                color: Color(0xFF222831),
                                height: 1.5),
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                      CategoryListView(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(9),
                child: Text(
                  'Popular Categories',
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Color(0xFF222831),
                      fontFamily: 'CinzelDecorative',
                      height: 1),
                ),
                color: Colors.transparent,
              ),

              /// This is the Box 3
              /// the recommended box
              ///
              ///
              ///
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryCard(
                        icon: LineIcons.fortAwesome, label: 'Fort/Castle'),
                    CategoryCard(icon: LineIcons.paw, label: 'Zoo'),
                    CategoryCard(
                      icon: LineIcons.dragon,
                      label: 'Dungeon',
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                MoreCategories());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: kConstantGoldColor,
                            ),
                            color: Colors.transparent),
                        height: 80,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LineIcons.plus,
                              size: 40,
                              color: kConstantGoldColor,
                            ),
                            Text(
                              'More',
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Color(0xFF222831),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
