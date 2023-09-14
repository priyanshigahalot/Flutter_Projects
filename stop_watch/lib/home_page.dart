import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Stopwatch stopwatch = Stopwatch();
  //String timer = '00:00:00';
  late Timer time;
  String handletime() {
    var sec = stopwatch.elapsed.inSeconds;
    var min = stopwatch.elapsed.inMinutes;
    var hour = stopwatch.elapsed.inHours;
    String second = (sec % 60).toString();
    String minute = (min % 60).toString();
    return "$hour:$minute:$second";
  }

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
          Container(
            height: 600,
            width: double.infinity,
            color: Color.fromARGB(255, 163, 218, 124),
            child: Center(
                child: CupertinoButton(
              onPressed: () {
                if (stopwatch.isRunning) {
                  stopwatch.stop();
                } else {
                  stopwatch.start();
                }
              },
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black, // Specify the border color
                    width: 4,
                    // Specify the border width
                  ),
                ),
                child: Align(
                    alignment: Alignment.center, child: Text(handletime(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70,color: Color.fromARGB(255, 52, 140, 213)),)),
              ),
            )),
          ),
          Container(
            height: 215,
            width: double.infinity,
            color: Color.fromARGB(255, 163, 218, 124),
            child: InkWell(
              onTap: () {
                stopwatch.reset();
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: Container(
                  height: 18,
                  // width: 100,
                  child: Image.asset("assets/reset.png"),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.circle,
                    border: Border.all(width: 6, color: Colors.black),
                    // color: Colors.black
                  ),
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}
