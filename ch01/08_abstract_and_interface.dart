/*

  Dart 추상클래스와 인터페이스

 */




// 추상클래스
abstract class Animal{
  String name;
  Animal(this.name);

  // 추상메서드
  void speak();


  void hello(){
    print('hello $name');
  }
}



class Dog extends Animal{
  String breed;

  Dog(String name, this.breed) : super(name);


  @override
  void speak(){
    print('$name($breed) 멍멍!');
  }
}


  // 인터페이스, Dart에서는 모든 클래스가 암묵적으로 interface, implement로 구현
  abstract class Vehicle {
    void start();
    void stop();
  }


  class Car implements Vehicle{

  String _brand;

  Car(this._brand);

  @override
  void start() {
    print('$_brand 출발...');
  }

  @override
  void stop() {
    print('$_brand 정지...');
  }

  }


  // 믹스인(Mixin)
  mixin Swimmable{
    void swim(){
     print('헤엄');
    }
  }

  mixin Flyable{
    void fly(){
      print('난다요');
    }
  }

  mixin Walkable{
    void walk(){
      print('걷는다');
    }
  }

  // 믹스인 사용
  class Duck extends Animal with Swimmable,Flyable,Walkable{

    Duck(String name) : super(name);

    @override
    void speak(){
      print('오리가 꽥꽥');
    }
  }

void main(){

  // 추상클래스
  Animal animal = Dog('강아지', '푸들');
  animal.speak();

  // 인터페이스

  Vehicle car = Car('현대');
  car.start();
  car.stop();

  // 믹스인
  Duck duck = Duck('오리');
  duck.speak();
  duck.swim();
  duck.fly();
  duck.walk();






}
