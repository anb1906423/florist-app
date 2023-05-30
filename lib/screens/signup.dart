import 'package:flutter/material.dart';

import '../widgets/signup/body_signup.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodySignup(),
    );
  }
}