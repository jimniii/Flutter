/*
  riverpod 상태관리 실습
 */





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
  Riverpod 의존성 설정
  - pubspec.yaml > flutter_riverpod : 2.6.1 버전 추가
  flutter_riverpod: ^2.6.1
 */

// 상태관리 모델 클래스 정의
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);  // 상태 초기화

  void increment() => state++;
  void decrement() => state--;

}

// 상태관리 모델 클래스 프로바이더 등록
final counterProvider = StateNotifierProvider<CounterNotifier, int>(
    (ref) => CounterNotifier()
);

final checkProvider = StateProvider((ref) => false);



void main(){
  runApp(const ProviderScope( // riverpod 프로바이더를 사용하기 위해 providerscope 처리
    child: MyApp(),
  ));
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('04.Riverpod 상태 관리 실습'),),
        body: ParentWidget(),
      ),
    );
  }
}


// Riverpod provider 제공을 위한 consumerwidget 상속
class ParentWidget extends ConsumerWidget { 
  const ParentWidget({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) { // ref: Riverpod 상태 모델 접근을 위한 참조객체

    // 상태 구독
    final counter = ref.watch(counterProvider);
    final check = ref.watch(checkProvider);


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Riverpod counter:${counter}'),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).increment();
              },
              child: const Text('증가'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).decrement();

              },
              child: const Text('감소'),
            ),
          ],
        ),
        const Divider(),
        Text(check ? '동의했음' : '동의 해야함'),
        CheckboxListTile(
            title: const Text('동의합니다'),
            value: check,
            onChanged: (value){
              ref.read(checkProvider.notifier).state = value ?? false;
            },
        )
      ],
    );
  }


}





































