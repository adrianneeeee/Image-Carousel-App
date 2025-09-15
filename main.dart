import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My Image Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
       home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  final List imageUrls = [
    'https://picsum.photos/400/300?ramdom=1',
    'https://picsum.photos/400/300?ramdom=2',
    'https://picsum.photos/400/300?ramdom=3',
    'https://picsum.photos/400/300?ramdom=4',
    'https://picsum.photos/400/300?ramdom=5',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrls[index],
                        width: 400,
                        height: 400,
                          fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              )
          ),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Image Gallery',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                ),
                SizedBox(height: 8),
                Text('Swipe left or right to explore the amazing photos. Each image is randomly generated',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600]
                ),
                textAlign: TextAlign.center,),
              ],

          )
          )
  ]
      )
    );
  }
}

