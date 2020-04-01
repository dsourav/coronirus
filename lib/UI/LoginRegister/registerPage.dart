
import 'package:coronirus/Theme/Colors.dart';
import 'package:coronirus/UI/Widget/inputDecoration.dart';
import 'package:coronirus/Utility/HeightWidth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controllerFullName=TextEditingController();
  final TextEditingController _controllerEmail=TextEditingController();
  final TextEditingController _controllerPass=TextEditingController();
  final TextEditingController _controllerConfirmPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.defaultBackgroundColorWhite,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: kToolbarHeight,),

              Container(
                margin: EdgeInsets.only(left: HeightWidth.width(context)*0.1),

                height: HeightWidth.height(context)/5,
                width: HeightWidth.width(context)/5,
                child: Image.asset('assets/images/logo_main.jpeg'),
              ),

              Container(
                  margin: EdgeInsets.only(left: HeightWidth.width(context)*0.1),

                  child: Text("User Registration",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),

              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  width: HeightWidth.width(context)*0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _controllerFullName,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration:inputDecorationWidget("Full Name")

                  ),
                ),
              ),
              SizedBox(height: 20.0,),


              Center(
                child: Container(
                  width: HeightWidth.width(context)*0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _controllerEmail,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration:inputDecorationWidget("Email Address")

                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  width: HeightWidth.width(context)*0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _controllerPass,
                      obscureText: true,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration:inputDecorationWidget("Password")

                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  width: HeightWidth.width(context)*0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _controllerConfirmPass,
                      obscureText: true,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration:inputDecorationWidget("Confirm Password")

                  ),
                ),
              ),
            ],
          ),


        ),
      ) ,
    );
  }
}
