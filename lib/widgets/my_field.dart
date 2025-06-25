import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  const MyField({
    super.key,
    required this.fieldTitle,
    this.hasPassword = false,
  });
  final String fieldTitle;
  final bool hasPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 322,
      decoration: BoxDecoration(
        color: Color(0xffE9E9E9),
        border: Border.all(color: Color(0xff5F5F5F)),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: hasPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 40, top: 14),
          border: InputBorder.none,
          labelText: fieldTitle,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Color(0xff5F5F5F),
          ),
        ),
      ),
    );
  }
}
