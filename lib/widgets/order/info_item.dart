import 'package:flutter/material.dart';

Widget infoItem(String title, String value,
    {FontWeight titleFontWeight = FontWeight.normal,
    FontWeight valueFontWeight = FontWeight.bold}) {
  return Container(
    padding: EdgeInsets.only(bottom: 7),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: titleFontWeight),
        ),
        Container(
          padding: EdgeInsets.only(top: 2),
          child: Text(
            value,
            style: TextStyle(fontWeight: valueFontWeight),
          ),
        ),
      ],
    ),
  );
}
