import 'package:e_commerce/LogIn_SignUp_Pages/log_in.dart';
import 'package:e_commerce/Components/text_Field.dart';
import 'package:e_commerce/Components/text_field_password.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verifaction_code_sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  static const String routeName = 'SignuP';
  SignUp({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 60,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(81, 81, 81, 0.9),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFieldSignUpLogIN(
                        controller: firstNameController,
                        lablelText: 'First Name',
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFieldSignUpLogIN(
                        controller: lastNameController,
                        lablelText: 'Last Name',
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldSignUpLogIN(
                  controller: emailController,
                  lablelText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldPassword(
                  labelText: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldPassword(
                  labelText: 'Confirm Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(VerificationCodeSignUp.routeName);
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
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.0,
                      width: 65.0,
                      color: const Color.fromRGBO(80, 80, 80, 1),
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 1.0,
                      width: 65.0,
                      color: const Color.fromRGBO(80, 80, 80, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              width: 1),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/Google.png',
                          width: 38,
                          height: 38,
                        ),
                        iconSize: 50,
                      ),
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              width: 1),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/Facebook.png',
                          width: 38,
                          height: 38,
                        ),
                        iconSize: 50,
                      ),
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              width: 1),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/X.png',
                          width: 38,
                          height: 38,
                        ),
                        iconSize: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have account?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(80, 80, 80, 1),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LogIn.routeName);
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Color.fromRGBO(16, 87, 43, 1)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
