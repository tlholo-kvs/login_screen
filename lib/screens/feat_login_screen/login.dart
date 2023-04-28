import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/starry-night.jpg"))),
        child: Column(
          children:  [
            //White container that will feature over the background image
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  //TODO: Extract as widget and duplicate for
                  //password fields
                  const TextField(),
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                      onPressed: () {
                      }, child: const Text("Log In", style: TextStyle(
                    color: Colors.white
                  ),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
