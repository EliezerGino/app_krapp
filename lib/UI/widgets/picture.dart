import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String picture;

  Picture(this.picture);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      padding: EdgeInsets.only(top: 100),
      child: Image(
        image: AssetImage(
          picture,
        ),
      ),
    );
  }
}