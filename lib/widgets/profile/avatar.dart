import 'package:flutter/material.dart';

Widget buildAvatarWidget() {
  return Container(
    width: 126,
    height: 126,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      image: DecorationImage(
        image: AssetImage('assets/images/Lan.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
