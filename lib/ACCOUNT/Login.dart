import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/img.dart';
import '../data/my_colors.dart';
import '../data/my_theme.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: MyColors.primary,
              statusBarBrightness: Brightness.light,
              systemNavigationBarDividerColor: MyColors.primary,
              statusBarColor: MyColors.primary),
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30,
          ),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image.asset(
                      Img.get('raspy.png'),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  Container(height: 15),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 5),
                  FormBuilderTextField(
                    name: 'email',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Email Address'),
                    onChanged: (x) {
                     // username = x.toString();

                      //newUser.email = value.toString();
                    },
                  ),
                  Container(height: 5),
                  FormBuilderTextField(
                    name: 'password',
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Password'),
                    onChanged: (x) {
                    //  password = x.toString();
                      // newUser.password = value.toString();
                    },
                  ),
                  //forgot password
                  Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.green),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.red[100]),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                  ),



                  Container(height: 0),
                  Container(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                        });
                        !_formKey.currentState!.validate();

                        },
                      // Navigator.pushNamed(context, SplashScreen.tag);

                    ),
                  ),

                  Container(height: 15),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent),
                      child: Text(
                        "Don't have an account? Register here.",
                        style: TextStyle(color: Colors.red[100]),
                      ),
                      onPressed: () {
                        Get.to(() => Signup());
                      },
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 6,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
