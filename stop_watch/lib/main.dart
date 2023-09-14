import 'package:flutter/material.dart';


import 'package:stop_watch/splash_screen.dart';

void main() {
  
  runApp( MyApp());
}

class MyApp extends StatelessWidget { 
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

