import 'package:flutter/material.dart';
import '../widgets/auth_button.dart';
import '/extension/extensions.dart';
import '../helpers/ui_helper.dart';
import '../widgets/my_button.dart';
import '../widgets/my_field.dart';

class SIGNUP extends StatelessWidget {
  const SIGNUP({super.key});

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;
    final h = query.height;
    final w = query.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.popRoute(),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: UIHelpers.appText(
              'Register',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        backgroundColor: Color(0xffFFC107),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: h * 0.12,
              width: w,
              padding: EdgeInsets.all(12),
              color: Color(0xffFFC107),
              child: UIHelpers.appText(
                'Sign Up',
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),

            16.0.ht,
            MyField(fieldTitle: 'Username'),
            10.0.ht,
            MyField(fieldTitle: 'Password'),
            10.0.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: UIHelpers.appText(
                    'Forgot Password?',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            15.0.ht,
            MyButton(selectHandler: () {}, title: 'Sign Up', size: 55),
            25.0.ht,
            AuthButton('assets/google.png', 'Sign In with Google', () {}),
            5.0.ht,
            AuthButton('assets/fb.png', 'Sign In with facebook', () {}),
          ],
        ),
      ),
    );
  }
}
