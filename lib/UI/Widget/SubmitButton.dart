
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback handleCallback;
  final color;
  final childText;
  SubmitButton({this.handleCallback,this.color,this.childText});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      onPressed: handleCallback,
      child: childText,


    );
  }
}
