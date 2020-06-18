import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Parabens',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Você completou a leitura com sucesso  ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
