class Avenger {
  String _name;
  Avenger({String name = "Avenger"}) {
    this._name = name;
  }
  void showInfo() {
    
  }
  String getInfo() => "I'm: " + _name;
}

class IronMan extends Avenger {
 
}
void main() {
  Avenger av = new Avenger();
  av.showInfo();
  IronMan irMan = new IronMan(name:'Iron Main');
  irMan.showInfo();
}
