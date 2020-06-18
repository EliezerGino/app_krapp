import 'package:flutter/material.dart';

class Label extends StatelessWidget {

  final String texto;

  Label(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Esse é  Krapp.\nEle vive na boca do Rôxwá,\nmas nem sempre ele foi assim.',
      style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
      textAlign: TextAlign.center,
    );
  }
}