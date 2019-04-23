class Point {
  int _x;
  int _y;
  getX() => _x;
  getY() => _y;
  Point({int x = 0, int y = 0}) {
    _x = x;
    _y = y;
  }
  void setX(int x) => _x = x;
  void setY(int y) => _y = y;
  void setXY({int x = 0, int y = 0}) {
    _x = x;
    _y = y;
  }
  void show(){
    print('x=$_x, y=$_y');
  }
}
