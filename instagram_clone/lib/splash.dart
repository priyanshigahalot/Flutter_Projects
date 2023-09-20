

import 'package:flutter/material.dart';
import 'package:instagram_clone/get_start_screen.dart';
import 'package:instagram_clone/login.dart';
import 'package:instagram_clone/login_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const GetStartedScreen();
        },
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(192,192,192,192),
      body: Center(
        child: Image.asset(
          'asserts/inslogo.png',
          height: 300,
          width:300,
        ),
      ),
    );
  }
}
