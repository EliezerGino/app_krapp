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
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Quando era mais novo, era \nmais branco, assim como os \noutros 19 dentinhos",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Quando Rôxwá completou 6 anos,\nseu dentinho começou  a ficar mole,\n quase caindo da boca de Rôxwá.",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"O dentinho já não era mais branco \ne estava sendo atacado por um pontinho \npreto chamado cárie",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Carie é um bichinho come os dentinhos\n e os permanentes. E Rôxwá ficou cheio de cáries, porque não escovou os dentinhos depois das refeições;",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Rôxwá comia muitos doces e não\nescovava os dentes e isso deixou o\ndentinho com muitas cáries.",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Roxwa começou a cuidar de todos os dentes\n\n",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Roxwa começou a comer os\nalimentos saudáveis e escovar os\ndentes três vezes por dia",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Roxwa foi ao dentista e seus 20\n dentinhos voltaram a ser branquinhos e felizes.\n",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"Roxwa está crescendo e ficando adulto.\n\n",
    },
    {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"E seus dentinhoa  estão caindo e novosa\ndentes estão nascendo, agora seus\ndentes se chamarão dentes permanente.",
    },
     {
      "SrcImge": "assets/KrappJr.png",
      "Heading":"A uantidade também aumentou,\nagora serão  32 dentes\n",
    },
  ];

  bool get textSelect {
    return _selectText < _historia.length;
  }

  bool get text2Select {
    return  _selectText >= 1;
  }


  void _nextHistory(){
    if(textSelect){
      setState((){
        _selectText++;
      });
    }
  }
  void _previousHistory(){
    if(textSelect){
      setState((){
        _selectText--;
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
                            SizedBox(height: 150,),
                            Row(
                             
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                text2Select?ButtonNext('Voltar', _previousHistory, Color(0xFF397DF4), Colors.white): Padding(padding: EdgeInsets.only()),
                                ButtonNext('Proximo', _nextHistory, Color(0xFFFFFFFF), Colors.black),
                                
                              ],
                            )
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



