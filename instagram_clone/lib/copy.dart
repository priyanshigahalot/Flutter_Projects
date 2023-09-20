//this is copy of searchpage-------->

import 'package:flutter/material.dart';

class copy extends StatefulWidget {
  const copy({super.key});

  @override
  State<copy> createState() => _copyState();
}

class _copyState extends State<copy> {
  List<Map<String, dynamic>> tempImages = [];
  List<Map<String, dynamic>> images = [
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        },
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        },
      ],
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ],
    },
    {
      'tag': 'Style',
      'image': [
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ],
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ],
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'Url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ],
    },
  ];
  List<Map<String, dynamic>> tags = [
    {'image': Icons.tv, 'name': 'IGTV'},
    {'image': Icons.shop, 'name': 'Shop'},
    {'image': null, 'name': 'Style'},
    {'image': null, 'name': 'Sports'},
    {'image': null, 'name': 'Auto'},
    {'image': null, 'name': 'Nature'},
    {'image': null, 'name': 'Moon'},
  ];

  @override
  void initState() {
    for (var element in images) {
      tempImages.add(element);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 88),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 36,
                          child: TextField(
                            style: const TextStyle(fontSize: 12),
                            cursorColor: Colors.grey,
                            onChanged: (v) {
                              setState(() {
                                tempImages = [];
                                for (var element in images) {
                                  tempImages.add(element);
                                }
                                print(tempImages.length);
                                tempImages.retainWhere((element) {
                                  print(element['tag']
                                      .toString()
                                      .toLowerCase()
                                      .contains(v.toLowerCase()));
                                  return element['tag']
                                      .toString()
                                      .toLowerCase()
                                      .contains(v.toLowerCase());
                                });
                                print(tempImages.length);
                              });
                            },
                            decoration: InputDecoration(
                                prefix: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10,
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    size: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Search',
                                filled: true,
                                fillColor:
                                    const Color(0xff767680).withOpacity(0.12),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1)))),
                          ),
                        )),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset(
                          'asserts/Live.png',
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            tempImages = [];
                            for (var element in images) {
                              tempImages.add(element);
                            }
                            print(tempImages.length);
                            tempImages.retainWhere((element) {
                              print(element['tag'] == tags[index]['name']);
                              return element['tag'] == tags[index]['name'];
                            });
                            print(tempImages.length);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 32,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: const Color(0xff3C3C43)
                                        .withOpacity(0.18))),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (tags[index]['image'] != null)
                                    Icon(
                                      tags[index]['image'],
                                      size: 15,
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      tags[index]['name'],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      );
                    },
                  ))
                ],
              )),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1),
              itemCount: tempImages.length,
              itemBuilder: (context, index) {
                //   return Column(
                //     children: [
                //       Image.network(
                //         tempImages[index]['image'][0]['Url'],
                //         fit: BoxFit.fill,
                //         height: 90,
                //       ),
                //       Text(tempImages[index]['tag'])
                //     ],
                //   );
                //below is the other method to do that
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            tempImages[index]['image'][0]['Url'],
                          ),
                          fit: BoxFit.fill)),
                  child: Visibility(
                    child: Align(
                      child: Image.asset('asserts/visible.png'),
                      alignment: Alignment.topRight,
                    ),
                    visible: tempImages[index]['image'].length > 1,
                  ),
                );
              },
            ),
          )),
    );
  }
}
