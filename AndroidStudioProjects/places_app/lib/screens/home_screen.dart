import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:places_app/screens/map.dart';
import 'package:places_app/screens/saved_places_screen.dart';
import 'package:places_app/screens/user_screen.dart';


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
          leading: Icon(LineIcons.cog,color: Colors.pink[600],size: 30,),
          centerTitle: true,
          actions: [
            Icon(Icons.search,color: Color(0xFF40C4FF),size: 30,),
          ],
          title: Text('Traveler', style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'CinzelDecorative',
            color: Colors.grey[800],
            letterSpacing: 2.0,
          ),
          ),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomAppBar(
            color: Colors.white,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(LineIcons.igloo,color: Colors.pink[600],
                  size: 30,
                ), onPressed: (){Navigator.pushNamed(context, HomeScreen.id);},),
                IconButton(icon: Icon(LineIcons.mapPin,color: Color(0xFF40C4FF),
                  size: 30,
                ), onPressed: (){Navigator.pushNamed(context, Map.id);}),
                IconButton(icon: Icon(LineIcons.alternateCloudDownload,color: Color(0xFF40C4FF),
                  size: 30,
                ), onPressed: (){Navigator.pushNamed(context, SavedPlaces.id);}),
                IconButton(icon: Icon(LineIcons.userAstronaut,color: Color(0xFF40C4FF),
                  size: 30,
                ), onPressed: (){
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
              Expanded
                (child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [Color(0x80d7e1ec), Color(0xFFb8c6db)]),
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
              Expanded(child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white),
                ///Here is the box color
                height: 200,
                width: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Text('Category',
                        style: TextStyle
                          (fontSize: 25,
                            letterSpacing: 2,
                            color: Colors.grey[700],
                            height: 1.5),
                      ),color: Colors.transparent,
                        ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.pink[600]),
                            color: Colors.white),
                          height: 100,width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(LineIcons.monument,size: 40,color: Colors.lightBlueAccent,),
                              Text('Monuments', style: TextStyle(fontSize: 11.0),),
                            ],
                          ),
                        ),
                        Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.pink[600]),
                            color: Colors.white),
                          height: 100,width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(LineIcons.atom,size: 40,color: Colors.lightBlueAccent,),
                              Text('Museums',style: TextStyle(fontSize: 11.0),),
                            ],
                          ),
                        ),
                        Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.pink[600]),
                            color: Colors.white),
                          height: 100,width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(LineIcons.dharmachakra,size: 40,color: Colors.lightBlueAccent,),
                              Text('Theme Park',style: TextStyle(fontSize: 11.0),),
                            ],
                          ),
                        ),
                        Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.pink[600]),
                            color: Colors.white),
                          height: 100,width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(LineIcons.plus,size: 40,color: Colors.lightBlueAccent,),
                              Text('More',style: TextStyle(fontSize: 11.0),),
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


              /// This is the Box 3
              /// the recommended box
              ///
              ///
              ///
              Expanded(child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.transparent,
                ),height: 200,
                width: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:10),
                    Container(
                      height: 25.0,
                      color: Colors.transparent,
                      child: Text(' Recommended', style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,
                      ),),
                    ),
                    SizedBox(height:10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('images/castle.png'),
                              ),
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(color: Colors.grey),
                            ),
                            height: 250,
                            width: 150,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('images/Musuem.png'),
                              ),
                              borderRadius: BorderRadius.circular(35),
                             border: Border.all(color: Colors.grey),
                            ),
                            height: 250,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
