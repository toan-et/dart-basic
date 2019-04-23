class Calculator {
  int _a;
  int _b;
  int c = 1234;
  static int d = 5678;
  Calculator({int a: 0, int b: 0}) {
    this._a = a;
    this._b = b;
  }
void show() {
    print('a = $_a, b = $_b, c = $c, d = $d');
  }
}
void show(Calculator calc){
  print('a = ${calc._a}, b = ${calc._b}, c = ${calc.c}, d = ${Calculator.d}');
}
/////////// Main function /////////////
void main() {
  Calculator calc = new Calculator(a: 7, b: 8);
  show(calc);  
}
