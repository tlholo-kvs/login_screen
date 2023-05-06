import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controllerForField,
    required this.hintText,
    required this.whatToEnter
  });

  final TextEditingController controllerForField;
  final String hintText;
  final TextInputType whatToEnter;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerForField,
      keyboardType: whatToEnter,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
          ),
          hintText: 'Enter your email'
      ),
    );
  }
}