import 'package:flutter/material.dart';

const kConstantGoldColor = Color(0xFFDDD2B2);
const kConstantTextColor = Color(0xFF222831);

// This here is for making category buttons;

class CategoryCard extends StatelessWidget {
  CategoryCard({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            icon,
            size: 40,
            color: kConstantGoldColor,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 11.0),
          ),
        ],
      ),
    );
  }
}
