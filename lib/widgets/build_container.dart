import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';

Container buildContainer(
  String item,
  int color, {
  double borderRadius = 12,
  double height = 98,
  double width = 95,
  Color colorFill=  const Color(0xffffffff)
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color:  colorFill,
      border: Border.all(color: Color(color)),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: UIHelpers.appImage(item),
  );
}
