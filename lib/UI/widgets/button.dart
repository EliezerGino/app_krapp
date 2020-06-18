
import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  
  final String texto;

  final void Function() onSelect;

  ButtonNext(this.texto, this.onSelect);



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          height: 60,
          width: 128 ,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(8)),
          child: FlatButton(
            child: Text(
              texto,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins"),
            ),
            onPressed: onSelect,
          ),
        ));
  }
}