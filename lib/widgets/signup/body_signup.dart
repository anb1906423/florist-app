import 'package:flutter/material.dart';

import '../../screens/welcome.dart';
import '../login/accounr_check.dart';
import '../login/background.dart';
import '../login/rounded_field.dart';
import '../login/rounded_pass.dart';
import 'rounded_button.dart';

class BodySignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text(
          //   "ĐĂNG NHẬP",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          // ),
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/logo.jpg",
            height: size.height * 0.26,
          ),
          RoundedField(
            hintText: "Nhập email của bạn...",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPass(
            onChanged: (value) {},
          ),
          const SizedBox(height: 17),
          RoundedButton(),
          const SizedBox(height: 10),
          AccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}