import 'package:flutter/material.dart';

Widget headerMaker(String Title){
  return Container(
    child: Column(
      children: [
        Text(Title, style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'RubikDoodleShadow' ),),
      ],
    ),
  );
}

Widget vrSpacing(double height){
  return SizedBox(
    height: height,
  );
}
Widget hrSpacing(double width){
  return SizedBox(
    width: width,
  );
}