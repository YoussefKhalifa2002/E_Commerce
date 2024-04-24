// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFieldSignUpLogIN extends StatelessWidget {
  final controller;
  final bool obscureText;
  final String lablelText;
  TextFieldSignUpLogIN({
    super.key,
    required this.lablelText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(lablelText),
        labelStyle: const TextStyle(
          color: Color.fromRGBO(80, 80, 80, 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(193, 193, 193, 0.6),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(193, 193, 193, 1),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(77, 193, 193, 193),
      ),
    );
  }
}
