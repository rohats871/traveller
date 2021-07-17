import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendu_user_app/HomePage.dart';
import 'package:vendu_user_app/LoginPage.dart';
import 'package:vendu_user_app/SignInPage.dart';

void main() => runApp(UserApp());

class UserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignInPage.id,
      routes: {
        SignInPage.id: (context) => SignInPage(),
        LoginPage.id: (context) => LoginPage(),
        HomeWidget.id: (context) => HomeWidget(),
      },
    );
  }
}
