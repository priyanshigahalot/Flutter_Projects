import 'package:flutter/material.dart';

import 'package:instagram_clone/chatScreen.dart';
import 'package:instagram_clone/notifications.dart';

class jsonsecond extends StatefulWidget {
  final List<Map<String, dynamic>> postdata;
  const jsonsecond({super.key, required this.postdata});

  @override
  State<jsonsecond> createState() => _jsonsecondState();
}

class _jsonsecondState extends State<jsonsecond> {
  PageController controller = PageController();
  int currentPage = 0;
  bool isSaved = false;


  List<Map<String, dynamic>> story = [
    {
      'user': 'Your Story',
      'file': [
        {
          'type':
              'https://images.unsplash.com/photo-1574701148212-8518049c7b2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1886&q=80',
        }
      ]
    },
    {
      'user': 'Amit',
      'file': [
        {
          'type':
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
        }
      ]
    },
    {
      'user': 'its_me shruti',
      'file': [
        {
          'type':
              'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        }
      ]
    },
    {
      'user': 'chilu_pp',
      'file': [
        {
          'type':
              'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        }
      ]
    },
    {
      'user': 'Nikku',
      'file': [
        {
          'type':
              'https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
        }
      ]
    }
  ];

  List<Map<String, dynamic>> postdata = [
    {
      'user': {
        'image':
            'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
        'user_name': 'shruti patel',
        'user_loc': 'downtown',
        'verified': const Drawer(),
      },
      'postBody': {
        'files': [
          {
            'file_type': 'image',
            'url':
                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
          }
        ],
        'caption_text': "hbbbbbbbb",
        'like_count': 89,
        ' save': true,
      },
    },
    {
      'user': {
        'image':
            'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
        'user_name': 'shruti 2patel',
        'verified': const Drawer(),
        'user_loc': 'Jaipur',
      },
      'postBody': {
        'files': [
          {
            'file_type': 'image',
            'url':
                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
          },
          {
            'file_type': 'image',
            'url':
                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
          }
        ],
        'caption_text': "hbbbbbbbb",
        'like_count': 89,
        ' save': true,
      },
    },
    {
      'user': {
        'image':
            'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
        'user_name': 'shruti 3patel',
        'verified': const Drawer(),
        'user_loc': 'Ajmer',
      },
      'postBody': {
        'files': [
          {
            'file_type': 'image',
            'url':
                'https://images.pexels.com/photos/2913125/pexels-photo-2913125.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          },
          {
            'file_type': 'image',
            'url':
                'https://media.istockphoto.com/id/1316474210/photo/young-female-student-read-and-learns-by-the-book-shelf-at-the-library-reading-a-book.jpg?s=1024x1024&w=is&k=20&c=Upbs_BNVHDS2HSmA6i2gOGxf_zB8oYGryxEIcrv5Pz4=',
          }
        ],
        'caption_text': "hbbbbbbbb",
        'like_count': 89,
        ' save': true,
      },
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leadingWidth: 400,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, right: 0, bottom: 1),
                child: Row(
                  children: [
                    Image.asset(
                      "asserts/writen.png",
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return notification();
                    }));
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const ChatScreen();
                        }),
                      );
                    },
                    icon: const Icon(Icons.message)),
              ],
            ),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                stories(),
                const Divider(),
                postview(),
              ],
            )));
  }

  Widget stories() {
    return SizedBox(
      height: 135,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: story.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                            // padding: EdgeInsets.all(7),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF2196F3),
                                width: 4,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                              //  image: DecorationImage(image: NetworkImage(story[index]['file'][0]['type'],))
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  )),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                                child: Image.network(
                                  story[index]['file'][0]['type'],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ))),
                  ],
                ),
                Text(story[index]['user'], textAlign: TextAlign.center),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget postview() {
    return ListView.builder(
      itemCount: postdata.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            header(postdata[index]),
            body(postdata[index]),
            footer(postdata[index]),
          ],
        );
      },
    );
  }

  Widget header(postWidget) {
    return Container(
      height: 55,
      // color: Colors.amber,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 11, vertical: 2),
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(postWidget['user']['image']))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(postWidget['user']['user_name'],
                  style: const TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.only(left: 1, top: 0, bottom: 2),
                child: Text(
                  "Downtown",
                  style: TextStyle(fontFamily: 'SFProText', fontSize: 11),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.only(top: 0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz)))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  body(Widgetpost) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentPage = value.ceil();
          });
        },
        itemCount: Widgetpost['postBody']['files'].length,
        itemBuilder: (context, index) {
          List<Map<String, dynamic>> file = Widgetpost['postBody']['files'];
          return Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Image.network(
                file[index]['url'],
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 36,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Text(
                  '${Widgetpost['postBody']['files'].length}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]);
        },
        
      ),
    );
  }

  Widget footer(post) {
    List<Map<String, dynamic>>posteach = post['postBody']['files'];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, right: 15, bottom: 10, left: 15),
          child: Row(
            children: [
              const  Icon(
                Icons.favorite_border,
                size: 25,
              ),
                const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.chat_bubble_outline_rounded,
                size: 25,
              ),
             const  SizedBox(
                width: 10,
              ),
              Image.asset(
                "asserts/paper-plane.png",
                height: 20,
                width: 20,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    isSaved = !isSaved;
                  });
                },
                
                child:  Icon(
                  isSaved?Icons.bookmark_border:Icons.bookmark,
  
              size: 30,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
