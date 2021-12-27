import 'package:flutter/material.dart';

import 'HomePage/home_screen.dart';
import 'login_screen/login_screen.dart';

class LandinPage extends StatelessWidget {
  const LandinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = false;
    return isLoggedIn ? HomeScreen() : LoginScreen();
  }
}
