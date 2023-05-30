import 'package:flutter/material.dart';
class AccountCheck extends StatelessWidget {
  const AccountCheck({
    super.key, required this.login, required this.press,
  });

  final bool login;
    final void Function()?  press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ?"Bạn chưa có tài khoản ?" : "Bạn đã có tài khoản ?",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
          login ? "Đăng ký" : "Đăng nhập",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}