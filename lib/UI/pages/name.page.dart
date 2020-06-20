import 'package:flutter/material.dart';
import 'home.page.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

 Decoration bgColor = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffc678f9),
        Color(0xff1969e0),
      ],
    ),
  );
  
     TextEditingController textFieldController = TextEditingController();

  
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 100,
                  
                ),
                Container(
                  height: 150,
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
                'Qual é o seu nome?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                 fontFamily: "Poppins"
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                controller: textFieldController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD9D9D9))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                  ),
                  hintText: 'Digite seu nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)
                  )
                ),
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF6347FB),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: FlatButton(
                  child: Text(
                    'Continuar',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                       fontFamily: "Poppins"
                    ),
                  ),
                  onPressed: () {
                      _sendDataToSecondScreen(context);
                    },
                ),
              )   
            )
          ],
        ),
      ),
    );
  }
  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = textFieldController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeApp(text: textToSend,),
        ));
  }
}

