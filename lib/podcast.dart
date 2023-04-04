import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List productList = [
    {
      "id": 1,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Carbon Footprint - Corporate Carbon Management",

    },
    {
      "id": 2,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Tomorrow on my mind",

    },
    {
      "id": 3,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Sustainable Living 2: Carbon Footprint - Is This It?",

    },
    {
      "id": 4,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "ReFi and Carbon Offset",

    },
    {
      "id": 5,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Greening the Internet",

    },
    {
      "id": 6,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Recommendations to reduce the digital carbon footprint",

    },
    {
      "id": 7,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Not All Emissions Are The Same: What Does Scope 1,2,3 Mean",

    },
    {
      "id": 8,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Calculating the carbon footprint of electricity use",

    },
    {
      "id": 9,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Are you aware of the digital carbon footprint?",

    },
    {
      "id": 10,
      "image": "https://media.istockphoto.com/id/1287920145/tr/foto%C4%9Fraf/karbon-footpint.jpg?s=612x612&w=is&k=20&c=pcsTAAa6H7MF_B77LZWHUsINDLjiXb1VUQ4KnbVO1jc=",
      "title": "Self-Help",

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          SizedBox(height: 30),
          WelcomeContainer(),
          SizedBox(height: 40),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: productList.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProductContainer( productList[index]["title"],productList[index]["image"]);
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color:Colors.white),
            label: 'Home',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_outlined, color:Colors.white),
            label: 'Podcasts',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color:Colors.white),
            label: 'Profile',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color:Colors.white),
            label: 'Categories',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}

class WelcomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('PODCASTS🎶',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          // Text('A Greet welcome to you all.'),
        ],
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  String image;
  String title;
  ProductContainer(this.title, this.image);

// final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:300,
      // width:150,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.network(
             image
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                SizedBox(height: 16),
                SizedBox(height: 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
