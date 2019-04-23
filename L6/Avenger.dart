class Avenger {
  String _name;
  Avenger({String name = "Avenger"}) {
    this._name = name;
  }
  void showInfo() {
    print(getInfo());
  }
  String getInfo() => "I'm: " + _name;
}

class IronMan extends Avenger {
  IronMan({name}) : super(name:name);
  @override
  void showInfo() {
    print(this.getInfo());    
  }
   @override
  String getInfo() {
    return super.getInfo();
  }
}
void main() {
  Avenger av = new Avenger();
  av.showInfo();
  IronMan irMan = new IronMan(name:'Iron Main');
  irMan.showInfo();
}
