
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
          decoration: BoxDecoration(
              color: Color(0xFF6347FB),
              borderRadius: BorderRadius.circular(4)),
          child: FlatButton(
            child: Text(
              texto,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins"),
            ),
            onPressed: onSelect,
          ),
        ));
  }
}