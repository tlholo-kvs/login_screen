import 'package:flutter/material.dart';
import 'package:login_screen/screens/feat_login_screen/login.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
