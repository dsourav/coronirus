import 'package:coronirus/Theme/Colors.dart';
import 'package:flutter/material.dart';

  inputDecorationWidget(String hint){
    return  InputDecoration(
        labelStyle: TextStyle(
          color: AppColor.textFieldBorderColor,

        ),
        labelText:hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(

              color: AppColor.textFieldBorderColor),
        ),
        focusedBorder: OutlineInputBorder(

          borderSide: BorderSide(color: AppColor.textFieldBorderColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(

              color: AppColor.textFieldBorderColor),
        )
    );
  }



