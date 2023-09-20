import 'package:flutter/material.dart';
import 'package:instagram_clone/room.dart';

class followingTab extends StatefulWidget {
  const followingTab({super.key});

  @override
  State<followingTab> createState() => _followingTabState();
}

class _followingTabState extends State<followingTab> {
  bool follow = true;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: 55,
        width: double.infinity,
        //color: Colors.black,
        child: Align(
            alignment: Alignment.centerLeft,
            //14,16
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 5, left: 22, right: 22),
              child: Container(
                  height: 40,
                  width: double.infinity,
                  child: const Text(
                    'Follow Requests',
                    style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 20,
                    ),
                  )),
            )),
      ),
      const Divider(),
      newbody(),
      today(),
      month(),
    ]);
  }

  Widget newbody() {
    return Container(
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            child: Align(
                alignment: Alignment.centerLeft,
                //14,16
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 5, left: 22, right: 22),
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      child: Text(
                        'New',
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                )),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 1, bottom: 1, left: 22, right: 2),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1682685797661-9e0c87f59c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'))),
                  ),
                ),
                SizedBox(width: 8),
                Container(
//color: Colors.black12,
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text(
                      "karenne",
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(" liked your photo.",
                        style:
                            TextStyle(fontFamily: 'SFProText', fontSize: 16)),
                    Text(" 1h",
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 16,
                            color: Colors.grey))
                  ]),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 22),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4='))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4),
          const Divider(),
        ],
      ),
    );
  }

  Widget today() {
    return Container(
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            child: Align(
                alignment: Alignment.centerLeft,
                //14,16
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 5, left: 22, right: 22),
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      child: const Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 1, bottom: 1, left: 22, right: 2),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1682685797661-9e0c87f59c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'))),
                  ),
                ),
                SizedBox(width: 8),
                Container(
//color: Colors.black12,
                  alignment: Alignment.centerLeft,
                  child: const Row(children: [
                    Text(
                      "karenne",
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(" liked your photo.",
                        style:
                            TextStyle(fontFamily: 'SFProText', fontSize: 16)),
                    Text(" 1h",
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontSize: 16,
                            color: Colors.grey))
                  ]),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 22),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4='))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4),
          const Divider(),
        ],
      ),
    );
  }

  Widget month() {
    return Container(
      height: 700,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            child: Align(
                alignment: Alignment.centerLeft,
                //14,16
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 5, left: 22, right: 22),
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      child: const Text(
                        'This Week',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )),
          ),
          Container(
            height: 110,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 1, bottom: 30, left: 22, right: 2),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1682685797661-9e0c87f59c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'))),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  //color: Colors.black12,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "calie_34",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " mentioned you",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              " in a ",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "comment:",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "@jacob_w ",
                              style: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: 16,
                                  color: Colors.blue),
                            ),
                            Text(
                              " exactly.. ",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "2d",
                              style: TextStyle(
                                fontFamily: 'SFProText',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 18,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Reply",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 22, bottom: 30),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4='))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 1, bottom: 1, left: 22, right: 2),
                        child: Container(
                          height: 50,
                          width: 48,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1682685797661-9e0c87f59c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'))),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    "ren_123_iam",
                                    style: TextStyle(
                                        fontFamily: 'SFProText',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(" started",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16)),
                                ]),
                                Row(children: [
                                  Text(" following you",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16)),
                                  Text(" 2d",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16,
                                          color: Colors.grey)),
                                ]),
                              ]),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Container(
                          //  color: Colors.grey,
                          height: 28,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),

                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const RoomScreen()));
                            },
                            child: Container(
                              height: 35,
                              width: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                  child: Text(
                                'Message',
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 1, bottom: 1, left: 22, right: 2),
                        child: Container(
                          height: 50,
                          width: 48,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1682685797661-9e0c87f59c60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'))),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    "ren_123_iam",
                                    style: TextStyle(
                                        fontFamily: 'SFProText',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(" started",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16)),
                                ]),
                                Row(children: [
                                  Text(" following you",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16)),
                                  Text(" 2d",
                                      style: TextStyle(
                                          fontFamily: 'SFProText',
                                          fontSize: 16,
                                          color: Colors.grey)),
                                ]),
                              ]),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Container(
                          //  color: Colors.grey,
                          height: 28,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),

                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const RoomScreen()));
                            },
                            child: Container(
                              height: 35,
                              width: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  // color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                  child: Text(
                                'Message',
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget someOneLikedYourPhoto() {
    return Text("hgh");
  }
}
