import 'package:flutter/material.dart';
import 'package:places_app/constants.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
        ),
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/castle.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/Musuem.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/castle.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/Musuem.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/castle.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/Musuem.png'),
                  ),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: kConstantGoldColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
