       // THIS IS THE HOME SCREEN

import 'package:flutter/material.dart';
import 'package:instagram_clone/copy.dart';

import 'package:instagram_clone/create.dart';


import 'package:instagram_clone/json2.dart';
import 'package:instagram_clone/likes.dart';

import 'package:instagram_clone/profile.dart';


class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

enum RoomTab { home, search, profile, likes, create }

class _RoomScreenState extends State<RoomScreen> {
  RoomTab selectedEnum = RoomTab.home;
  Widget showCurrent() {
    switch (selectedEnum) {
      case RoomTab.home:
        return jsonsecond(postdata: [],);
      case RoomTab.search:
        return const copy();
      case RoomTab.create:
        return const createScreen();
      case RoomTab.likes:
        return const likescreen();
      case RoomTab.profile:
        return const profilePage();
      default:
        return jsonsecond(postdata: [],);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showCurrent(),
      bottomNavigationBar: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 26),
        width: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [home(), search(), create(), likes(), profile()]),
      ),
    );
  }

  Widget home() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomTab.home;
        });
      },
      child: Image.asset(
        selectedEnum == RoomTab.home
            ? 'asserts/homeselect.png'
            : 'asserts/home.png',
        height: 23,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget search() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = RoomTab.search;
          });
        },
        child: Image.asset(
            selectedEnum == RoomTab.search
                ? 'asserts/search_selected.png'
                : 'asserts/search.png',
            height: 23));
  }

  Widget create() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = RoomTab.create;
          });
        },
        child: Image.asset('asserts/create_post.png', height: 23));
  }

  Widget likes() {
    return InkWell(
        onTap: () {
          setState(() {
            selectedEnum = RoomTab.likes;
          });
        },
        child: Image.asset(
            selectedEnum == RoomTab.likes
                ? "asserts/likes_selected.png"
                : 'asserts/likes.png',
            height: 22));
  }

  Widget profile() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomTab.profile;
        });
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  
                    'https://images.unsplash.com/photo-1682687220198-88e9bdea9931?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8NTZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'))),
      ),
    );
  }
}
