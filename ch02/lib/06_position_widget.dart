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
      home: const MyHomePage(title: '6. 위치 권한 위젯 실습'),
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
        children: [

          // Align : 특정 위치에 배치하기
          Container(
            width: double.infinity, // 가로폭 100%
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(width:1)
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lightBlueAccent.withValues(alpha: 0.3),
              )
            ),
          ),

          // FractionalOffset: 특정 위치 좌표로 배치하기
          Container(
            width: double.infinity, // 가로폭 100%
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width:1)
            ),
            child: Align(
                alignment: FractionalOffset(0.2, 0.5),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightBlueAccent.withValues(alpha: 0.3),
                )
            ),
          ),


          // stack: 위젯을 겹쳐서 배치
          Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.pinkAccent.withValues(alpha: 0.3),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent.withValues(alpha: 0.3),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue.withValues(alpha: 0.3),
              )
            ],
          ),

          // IndexedStack: 위젯을 겹쳐서 배치하고, index 번호로 화면에 표시하는 위젯
          IndexedStack(
            index: 1,
            children: [
              Text('첫번째 텍스트', style: TextStyle(fontSize: 15),),
              Text('두번째 텍스트', style: TextStyle(fontSize: 15),),
              Text('세번째 텍스트', style: TextStyle(fontSize: 15),),
            ],
          ),

          // Positioned
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 1)
            ),
            child: Stack(
              children: [
                Positioned( // Postioned 위젯은 반드시 Stack 위젯 자식 위젯으로 사용
                  left:10,
                  top:10,
                  child:Container(
                    width: 100,
                    height:100,
                    color: Colors.redAccent,
                  )
                ),
                Positioned( // Postioned 위젯은 반드시 Stack 위젯 자식 위젯으로 사용
                    left:10,
                    top:10,
                    child:Container(
                      width: 100,
                      height:100,
                      color: Colors.blue,
                    )
                ),
              ],
            ),
          )


        ],
      )
    );
  }
}














