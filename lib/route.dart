import 'package:coronirus/UI/LoginRegister/registerPage.dart';
import 'package:coronirus/UI/homePage.dart';
import 'package:flutter/material.dart';

import 'UI/LoginRegister/loginPage.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
//      case '/':
//        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/':return MaterialPageRoute(builder:  (_) => HomePage());


      case '/registerPage':return MaterialPageRoute(builder: (_) => RegisterPage());
        //      case '/second':
//      // Validation of correct data type
//        if (args is String) {
//          return MaterialPageRoute(
//            builder: (_) => SecondPage(
//              data: args,
//            ),
//          );
//        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}