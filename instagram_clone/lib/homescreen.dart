import 'package:flutter/material.dart';
import 'chatScreen.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ChatScreen();
              }));
            },
            icon: Icon(Icons.message))
      ]),
      body: Center(child: Text("hello"),),
    );
  }
}
