import 'package:flutter/material.dart';
import '/auth/login.dart';
import '/auth/sign_up.dart';
import '/extension/extensions.dart';
import '/helpers/ui_helper.dart';
import '/widgets/my_button.dart';

class ONBOARDING extends StatelessWidget {
  const ONBOARDING({super.key});

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;
    final h = query.height;
    final w = query.width;
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: UIHelpers.appText(
              'Kota Attack',
              fontWeight: FontWeight.w700,
              fontSize: 48,
            ),
          ),
          10.0.ht,
          UIHelpers.appImage('assets/logo.png'),

          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            height: h * 0.30,
            width: w,

            decoration: BoxDecoration(
              color: Color(0xffFFC107),
              border: Border.all(color: Color(0xffFFC107)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(top: 18, left: 10),
              children: [
                SafeArea(
                  child: UIHelpers.appText(
                    '🍽️ Welcome to Kotta Attack – Your Go-To Meal Companion!',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                20.0.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyButton(
                      selectHandler: () => context.pushreplaceRoute(SIGNUP()),
                      title: 'Sign Up',
                    ),
                    MyButton(
                      selectHandler: () => context.pushreplaceRoute(LOGIN()),
                      title: 'Login',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
