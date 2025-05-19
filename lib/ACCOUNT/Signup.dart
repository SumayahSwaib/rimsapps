import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../HomeApplicant.dart';
import '../data/img.dart';
import '../data/my_colors.dart';
import '../data/my_theme.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarDividerColor: MyColors.primary,
              systemNavigationBarColor: MyColors.primary,
              statusBarColor: MyColors.primary),
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
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
                  const SizedBox(
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
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 15),
                  FormBuilderTextField(
                    name: 'name',
                    keyboardType: TextInputType.name,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1(' First Name '),
                    onChanged: (value) {
                     // user.name = value.toString();
                    },
                    //initialValue: user.name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                      FormBuilderValidators.maxLength(100),
                    ]),
                  ),
                  Container(height: 5),
                  FormBuilderTextField(
                    name: 'last Name',
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Last Name '),
                    onChanged: (value) {
                     // user.saving_group_name = value.toString();
                    },
                   // initialValue: user.saving_group_name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                      FormBuilderValidators.maxLength(100),
                    ]),
                  ),
                  Container(height: 5),
                  FormBuilderTextField(
                    name: 'phone',
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Phone number'),
                    onChanged: (value) {
                     // user.phone = value.toString();
                    },
                   // initialValue: user.phone,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(10),
                      FormBuilderValidators.maxLength(13),
                      FormBuilderValidators.numeric(),
                    ]),
                  ),
                  Container(height: 5),
                  FormBuilderTextField(
                    name: 'username',
                    keyboardType: TextInputType.name,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Username/Email'),
                    onChanged: (value) {
                     // user.username = value.toString();
                    },
                    //initialValue: user.username,
                  ),
                  FormBuilderTextField(
                    name: 'password',
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(color: Colors.white),
                    decoration: MyTheme.inputStyle1('Password'),
                    onChanged: (value) {
                     // user.password = value.toString();
                    },
                   // initialValue: user.password,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                      FormBuilderValidators.maxLength(13),
                    ]),
                  ),
                  Container(height: 25),
                  Container(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                      ),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () async {
                        !_formKey.currentState!.validate();





                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeApplicant()));
                      },

                      // Get.offAllNamed('/HomeScreen');
                    ),
                  ),


                       Container(),
                  Container(height: 15),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent),
                      child: Text(
                        "Already have account? Login",
                        style: TextStyle(color: Colors.red[100]),
                      ),
                      onPressed: () {
                        Get.to(() => Login());
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
