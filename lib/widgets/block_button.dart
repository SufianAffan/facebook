import 'package:flutter/material.dart';

class BlockButton extends StatelessWidget {

  final Function() onPress;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Size? buttonSize;
  const BlockButton({Key? key, required this.onPress, this.backgroundColor,
    this.foregroundColor,this.buttonSize, required this.child}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ElevatedButton(
        onPressed: onPress,
        child: child,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          fixedSize: MaterialStateProperty.all(buttonSize),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
    );
  }
}
