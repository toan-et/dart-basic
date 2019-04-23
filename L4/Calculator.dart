class Calculator {
  int _a;
  int _b;
  int c = 1234;
  static int d = 5678;
  Calculator({int a: 0, int b: 0}) {
    this._a = a;
    this._b = b;
  }
  int getA() => _a;
  int getB() => _b;
  void show() {
    print('a = $_a, b = $_b, c = $c, d = $d');
  }
}
