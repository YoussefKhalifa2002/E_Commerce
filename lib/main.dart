import 'package:e_commerce/Components/navigation_bar_bottom.dart';
import 'package:e_commerce/Home_Screen/men_category.dart';
import 'package:e_commerce/Home_Screen/women_category.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/create_new_password.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/get_started_screen.dart';
import 'package:e_commerce/Home_Screen/home_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/log_in.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/sign_up.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/splash_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verifaction_code_sign_up.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/verification_code_forgot_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B&SStore',
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationBarBottom.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        GetStartedScreen.routeName: (context) => const GetStartedScreen(),
        SignUp.routeName: (context) => SignUp(),
        LogIn.routeName: (context) => LogIn(),
        ForgotPassword.routeName: (context) => ForgotPassword(),
        VerificationCodeSignUp.routeName: (context) =>
            const VerificationCodeSignUp(),
        VerificationCodeForgotPassword.routeName: (context) =>
            const VerificationCodeForgotPassword(),
        CreateNewPassword.routeName: (context) => const CreateNewPassword(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        NavigationBarBottom.routeName: (context) => const NavigationBarBottom(),
        MenCategory.routeName: (context) => const MenCategory(),
        WomenCategory.routeName: (context) => const WomenCategory(),
      },
    );
  }
}
