import 'package:flutter/cupertino.dart';

class HeightWidth{
  static double height(context)=>MediaQuery.of(context).size.height;
  static double width(context)=>MediaQuery.of(context).size.width;
}