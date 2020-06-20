
import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  
  final String texto;
   final Color colorbg;
   final Color colottx;

  final void Function() onSelect;

  ButtonNext(this.texto, this.onSelect, this.colorbg, this.colottx);



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          height: 60,
          width: 128 ,
          decoration: BoxDecoration(
              color: colorbg,
              borderRadius: BorderRadius.circular(5)),
          child: FlatButton(
            child: Text(
              texto,
              style: TextStyle(
                  fontSize: 14,
                  color: colottx,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins"),
            ),
            onPressed: onSelect,
          ),
        ));
  }
}