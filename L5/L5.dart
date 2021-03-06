import 'Point.dart';

void main() {
  // Init two points
  var p1 = Point(), p2 = Point(x: 6, y: 4);
  p1.show('Point 1');
  p2.show('Point 2');

  // Move p1 to (2,1)
  print('====== Move p1 ======');
  p1.setXY(x: 2, y: 1);
  p1.move(Point(x: 2, y: 1));
  p1.show();

  // Calculate distance of p1 & p2
  print('distance: ${Point.calcDistance(p1, p2)}');

  // Plus two p1 & p2
  print('====== Plus by fucntion ======');
  Point p3 = Point.plus(p1, p2);
  p3.show('Point 3:');

  // Plus
  print('====== Plus by operator ======');
  p3 = p2 + p3;
  p3.show();
}
