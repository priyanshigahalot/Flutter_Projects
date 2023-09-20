
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    // for (var element in images) {
    //   tempImage.add(element);
    // }
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  //List<Map<String, dynamic>> tempImage = [];

  static const List<Map<String, dynamic>> images = [
    {
      'tag': 'Green',
      'image':
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Relax',
      'image':
          'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Sea',
      'image':
          'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'woww',
      'image':
          'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Forest',
      'image':
          'https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Shop',
      'image':
          'https://images.unsplash.com/photo-1455218873509-8097305ee378?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Style',
      'image':
          'https://plus.unsplash.com/premium_photo-1664547606956-22749d0e0d77?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Sports',
      'image':
          'https://images.unsplash.com/photo-1414609245224-afa02bfb3fda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'IGTV',
      'image':
          'https://images.unsplash.com/photo-1546514355-7fdc90ccbd03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Shop',
      'image':
          'https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Style',
      'image':
          'https://images.unsplash.com/photo-1497449493050-aad1e7cad165?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Sports',
      'image':
          'https://images.unsplash.com/photo-1547036967-23d11aacaee0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'IGTV',
      'image':
          'https://plus.unsplash.com/premium_photo-1673264933051-3206029946b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Shop',
      'image':
          'https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Style',
      'image':
          'https://plus.unsplash.com/premium_photo-1673002094173-b16f2b946780?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Sports',
      'image':
          'https://images.unsplash.com/photo-1682685797439-a05dd915cee9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8NzB8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'IGTV',
      'image':
          'https://plus.unsplash.com/premium_photo-1677449236313-f8e5eda09a72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzJ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Shop',
      'image':
          'https://images.unsplash.com/photo-1508459855340-fb63ac591728?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzh8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Style',
      'image':
          'https://images.unsplash.com/photo-1621849400072-f554417f7051?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTN8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Sports',
      'image':
          'https://images.unsplash.com/photo-1615729947596-a598e5de0ab3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'IGTV',
      'image':
          'https://images.unsplash.com/photo-1507041957456-9c397ce39c97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAwfHxuYXR1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
    },
    {
      'tag': 'Shop',
      'image':
          'https://images.unsplash.com/photo-1580133318324-f2f76d987dd8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE1fHxuYXR1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Hide the default back button
          centerTitle: true,
          title: Container(
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 8),
                  Text(
                    "jacob_w",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SFProText',
                      height: 21,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu), // You can use any icon for your menu
              onPressed: () {
                // Add your menu action here
              },
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, condition) {
            return [
              SliverList(
                  delegate:
                      SliverChildListDelegate([profileHeaderWidget(context)]))
            ];
          },
          body: Column(
            children: [
              Container(
                color: Colors.grey, // Color of the divider
                height: 1, // Height of the divider
                width: double.infinity,
              ),
              TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                      child: SizedBox(
                          height: 30, child: Icon(Icons.grid_on_rounded))),
                  Tab(
                    child: SizedBox(
                      height: 377,
                      child: Icon(Icons.ac_unit),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(4),
                          child: Image.network(
                            images[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(4),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(4),
                          child: Image.network(
                            images[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
                //this ia for 
  Widget profileHeaderWidget(abs) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Container(
        height: 370,
   

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 96,
                  width: 96,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    //  image: DecorationImage(image: NetworkImage(story[index]['file'][0]['type'],))
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        )),
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1682687220198-88e9bdea9931?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8NTZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text("56",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'SFProText')),
                        Text("Posts",
                            style: TextStyle(
                                fontSize: 13, fontFamily: 'SFProText'))
                      ],
                    ),
                  ),
         
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        "560",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'SFProText'),
                      ),
                      Text("Followers",
                          style:
                              TextStyle(fontSize: 13, fontFamily: 'SFProText'))
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Text("520",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'SFProText')),
                    Text("Following",
                        style: TextStyle(fontSize: 13, fontFamily: 'SFProText'))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jacob West',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.bold)),
                    Text('Digital goodies designer ',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'SFProText')),
                    Text('Everything is designed.',
                        style: TextStyle(fontSize: 13, fontFamily: 'SFProText'))
                  ],
                ))),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    )),
                child: const Center(
                    child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            highlights(),
          ],
        ),
      ),
    );
  }

  Widget highlights() {
    return SizedBox(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 130,
            width: double.infinity,
         //   color: Colors.amber,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //  shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                if(index==0){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      alignment: Alignment.center,
                      width: 100,
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                
                                  // padding: EdgeInsets.all(7),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 82, 86, 90),
                                      width: 2,
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
                                     
                                      child: const Icon(Icons.add,size: 40,),
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                 const  Row(
                   
                     children:  [
                       Text('         New',style: TextStyle(fontFamily: 'SFProText',fontSize: 13),),
                               
                     ],
                   )
                  ],
                );
                }
                return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                
                                  // padding: EdgeInsets.all(7),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 82, 86, 90),
                                      width: 2,
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
                                        
                                        images[index]['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        
                       Padding(padding: EdgeInsets.only(right: 10),
                        child: Text(images[index]['tag']))
                        
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
