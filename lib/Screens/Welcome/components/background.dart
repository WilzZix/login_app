import 'package:flutter/material.dart';
import 'package:login_app/Screens/Welcome/Login/components/body.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
