import 'package:flutter/material.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: 200,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.transparent,
        ),
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
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
            SizedBox(
              width: 10,
            ),
            Container(
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
            SizedBox(
              width: 10,
            ),
            Container(
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
            SizedBox(
              width: 10,
            ),
            Container(
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
            SizedBox(
              width: 10,
            ),
            Container(
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
            SizedBox(
              width: 10,
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
