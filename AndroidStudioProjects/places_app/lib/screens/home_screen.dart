import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:places_app/screens/map.dart';
import 'package:places_app/screens/saved_places_screen.dart';
import 'package:places_app/screens/famous_places.dart';
import 'Category_listview.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50.0,
          leading: Icon(
            LineIcons.cog,
            color: Colors.pink[600],
            size: 30,
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.search,
              color: Color(0xFF40C4FF),
              size: 30,
            ),
          ],
          title: Text(
            'Traveler',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'CinzelDecorative',
              color: Colors.grey[800],
              letterSpacing: 2.0,
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
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                IconButton(
                    tooltip: 'Location',
                    icon: Icon(
                      LineIcons.mapPin,
                      color: Color(0xFF40C4FF),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Map.id);
                    }),
                IconButton(
                    icon: Icon(
                      LineIcons.alternateCloudDownload,
                      color: Color(0xFF40C4FF),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SavedPlaces.id);
                    }),
                IconButton(
                    icon: Icon(
                      LineIcons.splotch,
                      color: Color(0xFF40C4FF),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, UserScreen.id);
                    }),
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
                      color: Colors.white),

                  ///Here is the box color
                  height: 200,
                  width: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            'Category',
                            style: TextStyle(
                                fontFamily: 'CinzelDecorative',
                                fontSize: 20,
                                letterSpacing: 2,
                                color: Colors.grey[700],
                                height: 1.5),
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.pink[600]),
                                color: Colors.white),
                            height: 100,
                            width: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LineIcons.babyCarriage,
                                  size: 40,
                                  color: Colors.lightBlueAccent,
                                ),
                                Text(
                                  'Museums',
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.pink[600]),
                                color: Colors.white),
                            height: 100,
                            width: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LineIcons.atom,
                                  size: 40,
                                  color: Colors.lightBlueAccent,
                                ),
                                Text(
                                  'Museums',
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.pink[600]),
                                color: Colors.white),
                            height: 100,
                            width: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LineIcons.dharmachakra,
                                  size: 40,
                                  color: Colors.lightBlueAccent,
                                ),
                                Text(
                                  'Theme Park',
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.pink[600]),
                                color: Colors.white),
                            height: 100,
                            width: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LineIcons.plus,
                                  size: 40,
                                  color: Colors.lightBlueAccent,
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                flex: 2,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(9),
                child: Text(
                  'Nearby Places',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Colors.grey[700],
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
              CategoryListView(),
            ],
          ),
        ),
      ),
    );
  }
}
