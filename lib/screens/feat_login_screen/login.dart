import 'package:flutter/material.dart';

import '../widgets/MyTextField.dart';

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
              color: Colors.white.withOpacity(0.2),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  //TODO: Extract as widget and duplicate for
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
                    child: MyTextField(
                      controllerForField: emailController,
                      hintText: 'Enter email',
                      whatToEnter: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: MyTextField(
                      controllerForField: passwordController,
                      hintText: 'Enter password',
                      whatToEnter: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: MyTextField(
                      controllerForField: confirmPasswordController,
                      hintText: 'Confirm password',
                      whatToEnter: TextInputType.visiblePassword,
                    ),
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Log In",
                        style: TextStyle(color: Colors.black),
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
