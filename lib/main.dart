import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/Screens/Home.dart';
import 'package:project/Screens/productdetail.dart';
import 'package:project/Screens/products_screen.dart';
import 'package:project/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/Splash.dart';


void main() async {
 // Ensure Flutter is initialized
 WidgetsFlutterBinding.ensureInitialized();


 // Set preferred orientation to portrait up
 await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

 // Run the app
 runApp(const MyApp());
}



class MyApp extends StatelessWidget {
 const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
  return ScreenUtilInit(
    designSize: const Size(397, 852),
    splitScreenMode: true,
    builder: (builder, child) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Project App',
       theme: ThemeData(scaffoldBackgroundColor: kColorWhite),
       home: const SplashScreen()
      );
    });
 }
}