import 'package:flutter/material.dart';
import '/helpers/ui_helper.dart';

Padding AuthButton(String imagePath, String title, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 12),
    child: Card(
      elevation: 5,
      child: ListTile(
        onTap: onPressed,
        splashColor: Color(0xffFFFFFF),
        leading: UIHelpers.appImage(imagePath),
        title: UIHelpers.appText(
          title,
          color: 0xff000000,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        trailing: UIHelpers.appImage('assets/17915594001540882611 1.png'),
      ),
    ),
  );
}
