import 'package:flutter/material.dart';
import '/extension/extensions.dart';
import '/helpers/ui_helper.dart';
import '/splash/splash_screen.dart';
import '/widgets/my_button.dart';
import '/widgets/my_field.dart';

import '../widgets/auth_button.dart';

class LOGIN extends StatelessWidget {
  const LOGIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: UIHelpers.appText(
              'Register',
              color: 0xff0000000,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Container(
                height: 157,
                width: 464,
                color: Color(0xff00BC1E),

                child: Padding(
                  padding: EdgeInsets.only(left: 12, top: 40),
                  child: UIHelpers.appText(
                    'Sign in',
                    fontSize: 48,
                    color: 0xffFFFFFF,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            20.0.ht,
            MyField(fieldTitle: 'Username'),
            10.0.ht,
            MyField(fieldTitle: 'Password', hasPassword: true),
            10.0.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: UIHelpers.appText(
                    'Forgot Password?',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            12.0.ht,
            MyButton(
              size: 50,
              selectHandler: () => context.pushreplaceRoute(MainScreen()),
              title: 'Sign in',
            ),
            15.0.ht,
            AuthButton('assets/google.png', 'Sign In with Google', () {}),
            5.0.ht,
            AuthButton('assets/fb.png', 'Sign In with facebook', () {}),
          ],
        ),
      ),
    );
  }
}
