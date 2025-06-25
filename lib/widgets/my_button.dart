import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.selectHandler,
    required this.title,
    this.bgColor = const Color(0xff000000),
    this.size,
    this.hasIcon = false,
    this.imagePath,
    this.fgColor = const Color(0xff000000),
  });
  final VoidCallback selectHandler;
  final String title;
  final Color bgColor;
  final double? size;
  final bool hasIcon;
  final String? imagePath;
  final Color fgColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: hasIcon ? UIHelpers.appImage(imagePath ?? '') : null,
      style: ElevatedButton.styleFrom(
        foregroundColor: fgColor,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        fixedSize: size == null ? Size.fromWidth(120) : Size(360, size!),
      ),
      onPressed: selectHandler,
      label: UIHelpers.appText(
        title,
        fontSize: 15,
        color: 0xffffffff,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
