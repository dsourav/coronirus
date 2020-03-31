import 'package:coronirus/Theme/Colors.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
 final bool isthreeLine;
 final VoidCallback onTap;
 final icon;
 final title;
 final subtitle;

  const HomeCard({Key key, this.isthreeLine, this.onTap, this.icon, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: Card(
        color: AppColor.defaultBackgroundColorWhite,
        elevation: 8.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: Image.asset(icon),
                ),
                SizedBox(
                  height: 4.0,
                ),
                isthreeLine?   Text(
                 title,
                  style: TextStyle(
                      fontSize: 12.0,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.bold),
                ):
                Text(
                 title,
                  maxLines: 2,

                  style: TextStyle(
                      fontSize: 10.0,
                      letterSpacing: 0.2,

                      ),
                ),
                SizedBox(
                  height: 4.0,
                ),
              isthreeLine?  Expanded(
                  child: Text(
                   subtitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 8.0, letterSpacing: 0.5),
                  ),
                ):Container()
              ],
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
