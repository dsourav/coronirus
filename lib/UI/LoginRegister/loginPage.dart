import 'package:coronirus/Theme/Colors.dart';
import 'package:coronirus/UI/Widget/SubmitButton.dart';
import 'package:coronirus/UI/Widget/inputDecoration.dart';
import 'package:coronirus/Utility/HeightWidth.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  LogingOrRegisterEnum pageStats= LogingOrRegisterEnum.login;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.defaultBackgroundColorWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: kToolbarHeight * 2,
              ),
              Center(
                  child: Container(
                height: 150.0,
                width: 150.0,
                child: FlareActor("assets/corona.flr",

                  alignment:Alignment.center, fit:BoxFit.cover,animation: 'Untitled',),
              )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  margin:
                      EdgeInsets.only(left: HeightWidth.width(context) * 0.1),
                  child: Text(
                    pageStats == LogingOrRegisterEnum.login?  "User Login":"User Registration",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Container(
                  width: HeightWidth.width(context) * 0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _controllerEmail,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration: inputDecorationWidget("Email Address")),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: HeightWidth.width(context) * 0.8,
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _controllerPass,
                      obscureText: true,
                      //validator: (v) => Validator.nameValidator(v),
                      // style: TextStyle(color:AppColor.appRedColor),
                      decoration: inputDecorationWidget("Password")),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: SizedBox(
                  height: 50.0,
                  width: HeightWidth.width(context) * 0.8,
                  child: SubmitButton(
                    color: AppColor.submitButtonColor,
                    childText: Text(
                      pageStats == LogingOrRegisterEnum.login?  "Sign in":"Sign up",
                      style: TextStyle(color: AppColor.textFieldBorderColor),
                    ),
                    handleCallback: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: SizedBox(
                  height: 50.0,
                  width: HeightWidth.width(context) * 0.8,
                  child: SubmitButton(
                    color: AppColor.submitButtonColor,
                    childText: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text:pageStats == LogingOrRegisterEnum.login? "New User?":"Already Regitered?",
                          style: TextStyle(
                              color: AppColor.defaultBackgroundColorWhite)),
                      TextSpan(
                          text:pageStats == LogingOrRegisterEnum.login? "\tRegister":"Sign in",
                          style:
                              TextStyle(color: AppColor.textFieldBorderColor))
                    ])),
                    handleCallback: () {
                      changeEnumState();
                     // Navigator.of(context).pushNamed('/registerPage');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  changeEnumState(){
    setState(() {
      if(pageStats==LogingOrRegisterEnum.login){
        pageStats=LogingOrRegisterEnum.register;

      }
      else{
        pageStats=LogingOrRegisterEnum.login;

      }
    });


    }
}
enum LogingOrRegisterEnum { login, register }