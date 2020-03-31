
import 'package:coronirus/Theme/Colors.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final buttonColor;

  const HomeButton({Key key, this.title, this.onTap, this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color:buttonColor,
        child: Text(title,style: TextStyle(color: AppColor.defaultBackgroundColorWhite,fontWeight: FontWeight.bold),),
        onPressed:onTap );
  }
}
