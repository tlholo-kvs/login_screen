import 'package:flutter/material.dart';
import 'package:login_screen/screens/login.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
