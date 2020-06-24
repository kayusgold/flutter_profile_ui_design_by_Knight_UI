import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Widget icon;
  final Color bgcolor;

  const CircularIcon({Key key, this.icon, this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}
