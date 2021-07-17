import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendu_user_app/HomePage.dart';

class LoginPage extends StatelessWidget {
  static const String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Login in to get started",
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: .2,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  "Experience the all new App!",
                  style: TextStyle(
                      fontSize: 15,
                      wordSpacing: 1.5,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              border: UnderlineInputBorder(),
                              labelText: 'E-mail ID'),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: UnderlineInputBorder(),
                              labelText: 'Password'),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: CupertinoButton(
                              child: Text(
                                "Use Mobile Number",
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              onPressed: () {}),
                        ),
                        SizedBox(
                          height: 400,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, HomeWidget.id);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: .1,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
