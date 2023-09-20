import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, dynamic>> chatMessages = [
    {'message': "sd", 'me': true},
    {'message': "dkhsd", 'me': false},
    {
      'message': "hgbs;dkfj ks dfkj sk;df ;jskod fks dfk;s df;k sd;k fs; ",
      'me': true
    },
    {'message': "ljklsdmmmmmmmmmmmmmmmmm", 'me': false},
    {'message': "ljsdljd", 'me': true},
    {'message': ";sdklk", 'me': false},
    {'message': "sdljkl", 'me': true},
    {'message': "lsdjl", 'me': false},
    {'message': "sldjljsd", 'me': true},
    {'message': "slsdjld", 'me': false},
    {'message': "sdljjlsd", 'me': true},
    {'message': "sdljjlds`", 'me': false},
  ];

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView.builder(
//ListView.builder is a widget that efficiently creates a scrollable list by generating items on-the-fly as the user scrolls through the list.             

            itemCount: chatMessages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                    top: 8,
                    bottom: (chatMessages.length - 1 == index) ? 100 : 8),
                child: Row(
                  children: [
                    if (chatMessages[index]['me']) Expanded(child: SizedBox()),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 1.3),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(
                                  !chatMessages[index]['me'] ? 0 : 12),
                              bottomRight: Radius.circular(
                                  chatMessages[index]['me'] ? 0 : 12))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6),
                        child: Text(
                          chatMessages[index]['message'],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    if (!chatMessages[index]['me']) Expanded(child: SizedBox()),
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                maxLength: 200,
                controller: controller,
                style: const TextStyle(fontSize: 14),
                cursorColor: Colors.grey,
                onChanged: (v) {
                  setState(() {});
                },
                maxLines: 4,
                minLines: 1,
                decoration: InputDecoration(
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          chatMessages
                              .add({'me': false, 'message': controller.text});
                          controller.clear();
                        });
                      },
                      child: Icon(
                        Icons.send,
                      ),
                    ),
                    hintText: 'Enter Message',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1)))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
