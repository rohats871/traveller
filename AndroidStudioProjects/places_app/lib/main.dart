import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(places());
}
class places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50.0,
          leading: Icon(Icons.search,color: Colors.pink[600],size: 30.0,),
        centerTitle: true,
        actions: [
          Icon(LineIcons.cog,color: Color(0xFF40C4FF),size: 30,),
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
                Icon(LineIcons.igloo,color: Colors.pink[600],size: 30.0,),
                Icon(LineIcons.mapPin,color: Color(0xFF40C4FF),size: 30.0,),
                Icon(LineIcons.alternateCloudDownload,color: Color(0xFF40C4FF),size: 30.0,),
                Icon(LineIcons.userAstronaut,color: Color(0xFF40C4FF),size: 30.0,),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
