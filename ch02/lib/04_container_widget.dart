import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '테스트임니당',
      home: const MyHomePage(title: '03.Container Widget 실습'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width:100,
            height:100,
            color: Colors.pinkAccent,
          ),
          Container(
            width:100,
            height:100,
            color: Colors.pink,
            margin: EdgeInsets.only(left:10, top:10),
            child: Text('100 x 100'),
          ),


          Container(
            width:100,
            height:100,
            // color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:Colors.deepPurpleAccent,
              border: Border.all(width:1, color:Colors.black)
            ),
            child: Text('deep purple accent'),
          ),


          Container(
            width:100,
            height:100,
            decoration: BoxDecoration(
              border: Border.all(width:1, color:Colors.indigoAccent),
              shape: BoxShape.circle,
              image:DecorationImage(
                  image: AssetImage('images/flower1.jpg'),
                  fit:BoxFit.cover)
            )
          ),
        ],
      )

    );
  }
}
















