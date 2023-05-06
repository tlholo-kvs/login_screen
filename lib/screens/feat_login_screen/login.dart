import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 400,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/starry-night.jpg'),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //White container that will feature over the background image
            Container(
              color: Colors.white.withOpacity(0.4),
              padding: const EdgeInsets.only(left:20, right: 20),
              child: Column(
                children: [
                  //TODO: Extract as widget and duplicate for
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //password fields
                   Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        )
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Log In",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
