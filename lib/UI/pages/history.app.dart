import 'package:flutter/material.dart';

class History extends StatelessWidget {

  final Decoration bgColor = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffc678f9),
        Color(0xff1969e0),
      ],
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height:MediaQuery.of(context).size.height*1.80,
                  decoration: bgColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}