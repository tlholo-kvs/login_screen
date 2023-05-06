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
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(2))
          ),
          hintText: hintText
      ),
    );
  }
}