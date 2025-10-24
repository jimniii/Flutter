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
      home: const MyHomePage(title: '❤08. 기타 나머지 위젯❤'),
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
          Text('Text Left!!!', style: TextStyle(fontSize: 26)),
          
          // Center: 위젯을 가운데로 정렬
          Center(
            child: Text('Text Center!!!', style: TextStyle(fontSize: 26)),
          ),

          // Expanded: 비율로 배치
          Row(
            children: [
              Expanded(
                flex:5,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.red[100],
              )
             ),
              Expanded(
                flex:3,
                  child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.blue[100],
                  )
              ),
              Expanded(
                flex:2,
                  child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.green[100],
                  )
              )
            ],
          ),

          // Card: 그림자가 있는 둥근 사각형 박스
          Card(
            elevation: 3,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(12),
            child: Container(
              width: 100,
              height: 200,
              child: Column(
                children: [
                  Text('제목'),
                  Text('내용'),
                ],
              ),
            ),
          ),

          // Padding
          Padding(
              padding: EdgeInsets.all(10),
          child: Column(
              children: [
                Text('padding 10')
              ],
            ),
          ),

          // Icon: 웹 아이콘 출력 위젯
          // Spacer: 위젯과 위젯 사이의 빈공간 배치해서 비율 정렬

          Row(
            children: [
              Icon(
                  Icons.smoke_free,
                  size: 60,
              ),
              Spacer(),
              Icon(
                Icons.favorite,
                size: 60,
                color:Colors.red
              ),
              Spacer(
                flex:2,
              ),
              Icon(
                Icons.home,
                size: 60,
              ),



            ]
          ),



          // Spacer

          Row(
            children: [

            ],
          ),


          SizedBox(
            width: 300,
            height: 100,
            child: Container(
            color:Colors.blue
            ),
          ),

          // SingleChildScrollView
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  color: Colors.red[100],
                  child: Text('Box1')
                ),
                Container(
                    width: 400,
                    height: 200,
                    color: Colors.green[100],
                    child: Text('Box2')
                ),
                Container(
                    width: 400,
                    height: 200,
                    color: Colors.blue[100],
                    child: Text('Box3')
                )
              ]
                          ),
          )




        ],


      )

    );
  }
}
