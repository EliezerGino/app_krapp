import 'package:flutter/material.dart';
import 'package:krapp/UI/widgets/button.dart';
import 'package:krapp/UI/widgets/label.dart';
import 'package:krapp/UI/widgets/picture.dart';

import 'congratulations.page.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
      "SrcImge": "assets/Krapp.png",
      "Heading": "Esse é  Krapp.\nEle vive na boca do Rôxwá,\nmas nem sempre ele foi assim.",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Quando pequeno era um dente\nde leite, menor e mais branco assim\ncomo seus 19 irmãos.",
    },
  ];

  bool get textSelect {
    return _selectText < _historia.length;
  }

  void _nextHistory(){
    if(textSelect){
      setState((){
        _selectText++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: textSelect
          ? Container(
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
                            Picture(_historia[_selectText]["SrcImge"]),
                            SizedBox(
                              height: 50,
                            ),
                            Label(_historia[_selectText]["Heading"]),
                            ButtonNext('Proximo', _nextHistory)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          : Congratulations(),
    );
  }
}



