import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ), (t) => false);
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.cyan,
          child: Column(children: [
            Container(
              height: 150,
            ),
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Image.asset("assets/timer.png"),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //  border: Border.all(width: 6, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: SizedBox(
                height: 150,
                child: Text(
                  "Timer",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
