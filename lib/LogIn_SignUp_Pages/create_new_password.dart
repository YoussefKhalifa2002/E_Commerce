import 'package:e_commerce/Components/text_field_password.dart';
import 'package:e_commerce/Home_Screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateNewPassword extends StatelessWidget {
  static const String routeName = 'Create New Password';
  const CreateNewPassword({super.key});

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromRGBO(13, 75, 69, 1),
      barrierColor: Colors.black.withOpacity(0.3),
      isDismissible: false,
      builder: (context) => SizedBox(
        width: double.infinity,
        height: 812,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Icon(
                    Icons.done_rounded,
                    size: 150,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.circle_outlined,
                  size: 130,
                  color: Colors.white,
                ),
              ],
            ),
            const Text(
              'Your password has been changed',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome back! Discover now!',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    HomeScreen.routeName, (route) => false);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(255, 255, 255, 1),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                fixedSize: MaterialStatePropertyAll(
                  Size(242, 52),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                  color: Color.fromRGBO(13, 70, 65, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                'Create new Password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 81,
              ),
              const TextFieldPassword(labelText: 'New password'),
              const SizedBox(
                height: 25,
              ),
              const TextFieldPassword(labelText: 'Confirm password'),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  _displayBottomSheet(context);
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
                  'Submit',
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
