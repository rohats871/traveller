import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeWidget extends StatelessWidget {
  static const String id = 'HomeWidget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('images/rectangle.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    left: 300,
                    top: 70,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/fileshare.png'),
                      radius: 18,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 300,
                    child: CircleAvatar(
                        foregroundImage: AssetImage('images/shareheart.png'),
                        radius: 18,
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Evevy",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Full Rim Round, Cat- Eyed Anti Glare Frame(48 mm )",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$219",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "  \$999",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        "  78% Off",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                        child: Text(
                      "ADD TO CART",
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.orange,
                    ),
                    child: Center(
                        child: Text(
                      "BUY NOW",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
