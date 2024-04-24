import 'package:e_commerce/Components/text_Field.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verification_code_forgot_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static const String routeName = 'Forgot Password';
  ForgotPassword({super.key});

  final emailAdress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 60,
          ),
          child: Column(
            children: [
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 81,
              ),
              const Text(
                'enter email associated with your account and we’ll send and email with intructions to reset password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFieldSignUpLogIN(
                lablelText: 'Email Adress',
                controller: emailAdress,
                obscureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(VerificationCodeForgotPassword.routeName);
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 16, 87, 43),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  fixedSize: MaterialStatePropertyAll(
                    Size(242, 52),
                  ),
                ),
                child: const Text(
                  'Send Code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
