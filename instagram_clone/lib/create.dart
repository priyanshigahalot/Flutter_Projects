import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'package:instagram_clone/homescreen.dart';

class createScreen extends StatefulWidget {
  const createScreen({super.key});

  @override
  State<createScreen> createState() => _createScreenState();
}

class _createScreenState extends State<createScreen> {
  List<File> images = [];
  ImagePicker imagePicker = ImagePicker();
  TextEditingController controller = TextEditingController();
  Future<void> pickImages() async {
    try {
      List<XFile?> img = await imagePicker.pickMultiImage();
      if (img.isNotEmpty) {
        for (var element in img) {
          images.add(File(element!.path));
          setState(() {});
        }
      }
    } catch (e, s) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(26, 200, 149, 149),
          centerTitle: true,
          
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const homePage()));
            },
            icon: Icon(Icons.close),
            iconSize: 30,
            color: Colors.black,
          ),
          title: Text(
            "New Post",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          
          children: [
          
            SizedBox(
              height: 20,
              
            ),
            if (images.isEmpty)
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Container(
                   
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF2196F3), width: 4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        )),
                    child: Center(
                      
                        child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 100,
                        color: Color(0xFF2196F3),
                      ),
                      onPressed: () {
                        pickImages();
                      },
                    )),
                  ),
                ),
              )
            else
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: images.length,
                  padding: const EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    images[index],
                                  ))),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                images.removeAt(index);
                                setState(() {
                                  
                                });
                              },
                             child: Icon(Icons.cancel,color: CupertinoColors.white,),
                            ),
                            
                          ),
                        ),
                        Visibility(visible: index==(images.length-1),
                        child:Padding(padding: EdgeInsets.only(left: 8),
                        child:Container(
                            height: 120,
                            width: 120,
                                 decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF2196F3), width: 4),
                                 borderRadius: const BorderRadius.all(
                                  Radius.circular(40)),
                                             ),    
                 
                                 child: Center(
                        child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 100,
                        color: Color(0xFF2196F3),
                      ),
                      onPressed: () {
                        pickImages();
                      },
                    )),
                  
                  ) ),)
                      ],

                    );
                  },
                ),
              ),

              Center(
                child: Padding(padding: EdgeInsets.only(top: 150,left: 10,right: 10),
                child: TextField(
                  maxLines: 4,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 225, 204, 165),
                    hintText: 'Caption!!!!',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                       ),
                       
                  ),
                ),),
              ),
               const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color:
                       controller.text.trim().isEmpty && images.isEmpty
                            ? Colors.grey
                            : Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Create Post',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                )),
              ),
            ),
          )
          ],
        ));
  }
}
