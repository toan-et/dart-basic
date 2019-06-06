import 'Thanos.dart';
import 'Avenger.dart';
import 'CaptainAmerica.dart';
import 'Thor.dart';
void main(){
  
  Thor thorFactoryMade = Avenger(type: Avengers.Thor, name:'Thor Factory', sexual: 'Male');
  Thor thorHomeMade = Thor(name:'Thor Homemade', sexual: 'Male');
  thorFactoryMade.showInfo();
  thorHomeMade.showInfo();

  Thanos thanos = Avenger(type: Avengers.Thanos, name:'Thanos', sexual: 'Male');
  thanos.showInfo();

  CaptainAmerica ca = Avenger(type: Avengers.CaptainAmerica, name: Avengers.CaptainAmerica, sexual: 'Male');
  ca.showInfo();
  ca.fetchMjolnir();
}