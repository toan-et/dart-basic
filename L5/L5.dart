import 'Point.dart';
import 'dart:math' as math;

void main(List<String> args) {
  var p1 = Point(), p2 = Point(x: 5, y: 5);
  p1.show();
  p2.show();
  print('distance: ${distance(p1, p2)}');
}

double distance(Point p1, Point p2) {
  double d = math.sqrt(math.pow((p2.getX() - p1.getX()), 2) +
      math.pow((p2.getY() - p1.getY()), 2));
  return d;
}
