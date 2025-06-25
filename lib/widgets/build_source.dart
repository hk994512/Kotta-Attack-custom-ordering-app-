import 'package:flutter/material.dart';
import '/extension/extensions.dart';

import '../helpers/ui_helper.dart';

class BuildSource extends StatelessWidget {
  const BuildSource({
    super.key,
    required this.title,
    required this.type,
    this.image = 'assets/coke.png',
  });
  final String image;
  final String title;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        6.0.ht,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UIHelpers.appText(title, fontSize: 15, fontWeight: FontWeight.bold),
            20.0.ht,
            UIHelpers.appText(type, fontSize: 15, fontWeight: FontWeight.bold),
          ],
        ),
        Divider(height: 12, thickness: 1),
      ],
    );
  }
}
