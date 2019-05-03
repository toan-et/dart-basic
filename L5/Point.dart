import 'dart:math' as math;
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

  void move(Point p) {
    setXY(x: p.getX(), y: p.getY());
  }

  void show([String label = 'Point']) {
    print('$label: x=$_x, y=$_y');
  }

  static Point plus(Point p1, Point p2) {
    return Point(x: p1.getX() + p2.getX(), y: p1.getY() + p2.getY());
  }

  Point operator +(Point p) {
    return Point(x: _x + p.getX(), y: _y + p.getY());
  }

  static double calcDistance(Point p1, Point p2) {
    double d = math.sqrt(math.pow((p2.getX() - p1.getX()), 2) +
        math.pow((p2.getY() - p1.getY()), 2));
    return d;
  }
}
