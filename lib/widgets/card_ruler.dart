import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';
import 'build_source.dart';
cardRuler(
  bool isToggled,
  String title,
  String appImage,
  void Function() onTap,
  String buildTitle1,
  String buildTitle2,
  String buildTitle3,
  String typeTitle1,
  String typeTitle2,
  String typeTitle3,
) {
  return Column(
    children: [
      Container(
        height: 52,
        width: 324,
        color: Color(0xff000000),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: UIHelpers.appText(
                title,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: 0xffFFFFFF,
              ),
            ),
            UIHelpers.appImage(appImage),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                !isToggled
                    ? CupertinoIcons.chevron_up
                    : CupertinoIcons.chevron_down,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      isToggled
          ? Container(
            height: 130,
            width: 324,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(border: Border.all()),

            child: Column(
              children: [
                BuildSource(title: buildTitle1, type: typeTitle1),
                BuildSource(title: buildTitle2, type: typeTitle2),
                BuildSource(title: buildTitle3, type: typeTitle3),
              ],
            ),
          )
          : Container(),
    ],
  );
}
