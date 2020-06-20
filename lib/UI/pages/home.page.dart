import 'package:flutter/material.dart';
import 'package:krapp/UI/pages/history.app.dart';

class HomeApp extends StatefulWidget {
  final String text;
  HomeApp({this.text});

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 130,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      
                      Center(
                          child: RichText(
                        text: TextSpan(
                          text: 'Olá, ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF18113B),
                            fontSize: 20.0,
                            fontFamily: "Poppins",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: widget.text,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    fontFamily: "Poppins",
                                    color: Color(0xFF716E81))),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      )),
                      Text(
                        'Cacique',
                        style: TextStyle(
                            color: Color(0xffFE9021),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Text(
                'Minhas Historias',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 80, right: 80),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => History()),
                  );
                },
                child: Image(
                  image: AssetImage('assets/KrappBook.png'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 95, right: 95),
              child: Text(
                'Conheça Krapp \nAutor: Anonimo, Ano 2020',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
