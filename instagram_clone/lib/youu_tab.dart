import 'package:flutter/material.dart';

class youTab extends StatefulWidget {
  const youTab({super.key});

  @override
  State<youTab> createState() => _youTabState();
}

class _youTabState extends State<youTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'you Tab',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
