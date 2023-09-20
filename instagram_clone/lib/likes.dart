import 'package:flutter/material.dart';
import 'package:instagram_clone/youu_tab.dart';
import 'package:instagram_clone/follow_tab.dart';

class likescreen extends StatefulWidget {
  const likescreen({super.key});

  @override
  State<likescreen> createState() => _likescreenState();
}

class _likescreenState extends State<likescreen> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                      child: Text("Following",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Tab(
                     child: Text("You",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [followingTab(), youTab()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
