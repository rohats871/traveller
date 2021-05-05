import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'constants.dart';

class MoreCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1),
      color: Color(0xFF757575),
      child: Container(
        height: 600,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
          ),
          children: [
            CategoryCard(icon: LineIcons.monument, label: 'Monument'),
            CategoryCard(icon: LineIcons.rocket, label: 'Museums'),
            CategoryCard(icon: LineIcons.dungeon, label: 'Theme Park'),
            CategoryCard(icon: LineIcons.buildingAlt, label: 'Mall'),
            CategoryCard(icon: LineIcons.gamepad, label: 'Game Parlor'),
            CategoryCard(icon: LineIcons.placeOfWorship, label: 'Temple'),
            CategoryCard(icon: LineIcons.church, label: 'Churches'),
            CategoryCard(
                icon: LineIcons.alternateTicket, label: '  Movie \nTheatre'),
            CategoryCard(icon: LineIcons.campground, label: 'Camping'),
            CategoryCard(icon: LineIcons.hiking, label: 'Hiking'),
            CategoryCard(icon: LineIcons.cocktail, label: 'Club'),
            CategoryCard(icon: LineIcons.candyCane, label: 'Disney Land'),
            CategoryCard(icon: LineIcons.tree, label: 'Park'),
            CategoryCard(icon: LineIcons.mosque, label: 'Mosque'),
            CategoryCard(icon: LineIcons.coffee, label: 'Cafe'),
            CategoryCard(icon: LineIcons.landmark, label: 'Landmark'),
            CategoryCard(
                icon: LineIcons.hippo, label: '   Wildlife \n Scantuary'),
            CategoryCard(icon: LineIcons.helicopter, label: 'Sky Diving'),
            CategoryCard(icon: LineIcons.fly, label: ' Hot  Air \n Balloon'),
            CategoryCard(icon: LineIcons.parachuteBox, label: 'Para Gliding'),
            CategoryCard(icon: LineIcons.couch, label: ' Drama \nTheatre'),
            CategoryCard(icon: LineIcons.bookOfTheDead, label: 'Library'),
            CategoryCard(icon: LineIcons.paw, label: 'Zoo'),
            CategoryCard(icon: LineIcons.wolfPackBattalion, label: 'Circus'),
            CategoryCard(icon: LineIcons.chessPawn, label: 'Light House'),
            CategoryCard(icon: LineIcons.palette, label: 'Art Gallery'),
            CategoryCard(icon: LineIcons.fantasyFlightGames, label: 'Arcade'),
            CategoryCard(icon: LineIcons.guitar, label: 'Concert Hall'),
            CategoryCard(icon: LineIcons.wizardSHat, label: 'Carnival'),
            CategoryCard(icon: LineIcons.fish, label: 'Aquarium'),
            CategoryCard(icon: LineIcons.archway, label: 'Heritage Site'),
            CategoryCard(icon: LineIcons.mountain, label: 'Scenic Area'),
            CategoryCard(
                icon: LineIcons.seedling, label: '   Botanical \n     Garden'),
            CategoryCard(icon: LineIcons.fortAwesome, label: 'Fort / Castle '),
            CategoryCard(icon: LineIcons.cashRegister, label: 'Casino'),
            CategoryCard(icon: LineIcons.trophy, label: 'Stadium'),
            CategoryCard(icon: LineIcons.drum, label: 'Opera'),
          ],
        ),
      ),
    );
  }
}
