import 'CaptainAmerica.dart';
import 'Thanos.dart';
import 'Thor.dart';

abstract class Avenger {
  String name;
  String sexual;
  Avenger.forExtendConstructor({String name = "Avenger", String sexual = "Unkown"}) {
    this.name = name;
    this.sexual = sexual;
  }
  void showInfo() {
    print('------ Info ------');
    print('Name: $name');
    print('Sexual: $sexual');
  }

  factory Avenger({String type, String name = "Avenger", String sexual = "Unkown"}){
    dynamic avenger;
    switch(type){
      case Avengers.Thanos:  avenger = Thanos(name:name, sexual: sexual); break;
      case Avengers.Thor:  avenger = Thor(name:name, sexual: sexual); break;
      case Avengers.CaptainAmerica:  avenger = CaptainAmerica(name:name, sexual: sexual); break;
    }
    return avenger;
  }
  // add more named constructor function here


  void doSkill();
}
class Avengers {
  static const String Thanos = 'Thanos';
  static const String CaptainAmerica = 'Captain America';
  static const String Thor = 'Thor';
  // add more function here
  
}
