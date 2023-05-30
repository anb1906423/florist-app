import 'package:flutter/material.dart';

import 'rounded_field.dart';
class RoundedPass extends StatelessWidget {
  const RoundedPass({
    super.key, required this.onChanged,
  });
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Mật khẩu",
          icon: Icon(
            Icons.lock,
            color: Colors.pink.shade50,
          ),
          suffixIcon: Icon(Icons.visibility, color: Colors.pink.shade50),
          border: InputBorder.none,
        ),
      ),
    );
  }
}