import 'package:flutter/material.dart';
import 'package:krapp/UI/pages/home.page.dart';

class Congratulations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Parabéns',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                    
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Você completou a leitura com sucesso',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:450),
                  Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Color(0xFF6347FB)
                ),
                child: FlatButton(
                  child: Text(
                    'Concluir',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeApp()),
                    );
                  },
                ),
              ),
            )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
