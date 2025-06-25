import 'package:flutter/material.dart';
import '/helpers/ui_helper.dart';

extension Routes on BuildContext {
  NavigatorState get route => Navigator.of(this);
  pushRoute(Widget screen) {
    return route.push(buildRoute(screen));
  }

  buildRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }

  pushreplaceRoute(Widget screen) {
    return route.pushReplacement(buildRoute(screen));
  }

  popRoute() => route.pop();

  showAlert(String message) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: Colors.teal,
        content: UIHelpers.appText(message, color: 0xffffffff),
      ),
    );
  }
}

extension Adaptives on double {
  get wt => SizedBox(width: this);
  get ht => SizedBox(height: this);
  Widget sizedWithChild(Widget child) =>
      SizedBox(height: this, width: this, child: child);
}

extension MySpace on Widget {
  Widget padd(Widget child, EdgeInsetsGeometry padding) =>
      Padding(padding: padding, child: child);
}
