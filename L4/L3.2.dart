import './Calculator.dart';

void main() {
  Calculator calc = new Calculator(a: 7, b: 8);
  show(calc);
}
void show(Calculator calc){
  print('a = ${calc.getA()}, b = ${calc.getB()}, c = ${calc.c}, d = ${Calculator.d}');
}
