import 'package:e_commerce/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/Home_Screen/home_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/sign_up.dart';
import 'package:e_commerce/Components/text_Field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  static const String routeName = 'LogIn';
  final emailAdress = TextEditingController();
  final password = TextEditingController();
  LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 45),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(81, 81, 81, 0.9),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldSignUpLogIN(
                  lablelText: 'Email Adress',
                  controller: emailAdress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldSignUpLogIN(
                  lablelText: 'Password',
                  controller: password,
                  obscureText: true,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ForgotPassword.routeName);
                      },
                      child: const Text('forgot password?'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        HomeScreen.routeName, (route) => false);
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
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(80, 80, 80, 1),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignUp.routeName);
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Color.fromRGBO(16, 87, 43, 1)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
