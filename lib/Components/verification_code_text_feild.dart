import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCodeTextField extends StatelessWidget {
  const VerificationCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 57,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        color: Color.fromRGBO(245, 245, 245, 1),
        border: Border.fromBorderSide(
          BorderSide(
            width: 1,
            color: Color.fromRGBO(193, 193, 193, 1),
          ),
        ),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        cursorColor: const Color.fromARGB(255, 16, 87, 43),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        style: const TextStyle(fontSize: 25),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
