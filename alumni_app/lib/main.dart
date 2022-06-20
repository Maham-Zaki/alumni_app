// @dart=2.9

import 'dart:ui';

import 'package:alumni_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(
    DevicePreview(
      enabled:true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Sizer(
        builder: (context, orientation, deviceType) {
          return

            MaterialApp(
                debugShowCheckedModeBanner: false,
                home:Splash2());

            },
      );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds:  Login(),
      title:  Text('AlumniApp',textScaleFactor: 2,style: TextStyle( fontFamily: "RobotoMono",fontWeight: FontWeight.w600),),
      image: Image.asset("assets/logo2.jpeg"),
      loadingText: Text("Loading"),
      photoSize: 90.0,
      loaderColor: Colors.red[700],
    );
  }
}