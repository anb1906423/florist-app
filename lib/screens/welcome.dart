import 'package:flutter/material.dart';

import '../widgets/login/body_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodyWelcome(),
    );
  }
}