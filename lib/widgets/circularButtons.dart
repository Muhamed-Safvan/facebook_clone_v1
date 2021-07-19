import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final iconColor;

  CircularButton({
    required this.buttonAction,
    required this.buttonIcon,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(buttonIcon,
          color: iconColor,
          size: 25,
        ),
      ),
      margin: EdgeInsets.all(5),
    );
  }
}
