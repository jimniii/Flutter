/*

  변수와 타입

 */


// Dart 프로그램 진입점
void main() {
// 변수와 기본 타입
  String name = '홍길동';
  int age = 23;
  double height = 177.2;
  bool isStudent = true;
  num score = 100; // 숫자형(int, double 포함하는 상위타입)
  var address = '부산시'; // 자동 추론 타입(컴파일 시점, 최초 한번 타입이 정해지면 변경 불가)
  dynamic etc = '기타'; // 자동 동적 타입(런타임 시점, 최초 한번 타입이 정해져도 변경 가능)

  etc = 1111; // 변경 가능하지만 권장은 안함
  print(etc);

  print(
      '이름: ${name}\n나이:${age}\n키:${height}\n학생여부:${isStudent}\n주소:${address}');


  // Nullable 타입, dart의 기본 변수는 모두 Non-Nullable, null값 취급하기 위해서 타입 뒤에 ?표기
  String? value1 = null;
  int? value2;

  print('value1:${value1}, value2:${value2}');


  // 타입 확인
  print("name 타입: ${name.runtimeType}");
  print("age 타입: ${age.runtimeType}");
  print("height 타입: ${height.runtimeType}");
  print("isStudent 타입: ${isStudent.runtimeType}");
  print("score 타입: ${score.runtimeType}");
  print("address 타입: ${address.runtimeType}");
  print("etc 타입: ${etc.runtimeType}");
  print("value1 타입: ${value1.runtimeType}");
  print("value2 타입: ${value2.runtimeType}");


  // 타입 변환
  String strNum = '2025';
  int intNum = int.parse(strNum);
  print('intNum: ${intNum}');


  double price = 19.9;
  int intPrice = price.toInt();
  print('intprice: ${intPrice}');

  int count = 122;
  String strCount = count.toString();
  print('strCount: ${strCount}');

  // 상수
  final num1 = 100; // 런타임 상수
  const num2 = 200; // compile 타입 상수



  // 타입 확인


  // 타입 변환


  // 상수


  // 문자열


}








