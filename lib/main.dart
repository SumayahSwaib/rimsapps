import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'ACCOUNT/Login.dart';
import 'HomeApplicant.dart';
import 'SplashScreen.dart';





void main() {
  WidgetsFlutterBinding.ensureInitialized();
 /* AppTheme.init();*/
  runApp(GetMaterialApp(

      debugShowCheckedModeBanner: false,
      /*theme: Utils.lightTheme,*/
      home: const Login(),
      routes: <String, WidgetBuilder>{

      }));
}

