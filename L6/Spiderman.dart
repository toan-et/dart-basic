import 'Avenger.dart';
import 'Gadget.dart';

class Spiderman extends Avenger {
  Spiderman()
      : super(name: 'Peter', sexual: 'male', gadget: Gadget('Silk Shoot'));
  void doSkill() {
    print('Nhảy ra khỏi thằng điên');
    print('');
  }
}
