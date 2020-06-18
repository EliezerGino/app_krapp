import 'package:flutter/material.dart';
import 'package:krapp/UI/widgets/label.dart';

import 'congratulations.page.dart';

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

  var _selectText = 0;

  final _historia = const [
    {
      "SrcImge" : "assets/Krapp",
      "Heading": "Esse é  Krapp. Ele vive na boca do Rôxwá, mas nem sempre ele foi assim.",
    },
    {
      "SrcImge" : "assets/Krapp",
      "Heading": "Esse é  Krapp. Ele vive na boca do Rôxwá, mas nem sempre ele foi assim.",
    },
    {
      "SrcImge" : "assets/Krapp",
      "Heading": "Esse é  Krapp. Ele vive na boca do Rôxwá, mas nem sempre ele foi assim.",
    }
  ];

  bool get textSelect {
    return _selectText < _historia.length;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: textSelect ?
       Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 660,
                  width: double.infinity,
                  decoration: bgColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 270,
                        padding: EdgeInsets.only(top: 100),
                        child: Image(
                          image: AssetImage(
                            'assets/Krapp.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Label(_historia[_selectText]['Heading'])
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ):Congratulations(),
    );
  }
}


