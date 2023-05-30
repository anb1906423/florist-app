import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.press,
  });
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 17, bottom: 17, left: 110, right: 110),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.pink.shade100,
      ),
      onPressed: press,
      child: const Text(
        " Đăng Ký",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}