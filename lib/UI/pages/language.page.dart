import 'package:flutter/material.dart';
import 'package:krapp/UI/pages/name.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height:200,
                  child: Center(
                      //child: Image(image: AssetImage(''),)
                      ),
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Antes de iniciarmos \n escolha.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Poppins"),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: const Color(0xFF6347FB), width: 1.5),
                ),
                child: FlatButton(
                    child: Text(
                      'Português',
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    }),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: const Color(0xFF6347FB), width: 1.5),
                ),
                child: FlatButton(
                  child: Text(
                    'Krahô',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
