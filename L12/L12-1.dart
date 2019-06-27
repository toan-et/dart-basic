import 'dart:io';

class l12_1 {
  static inPutValue() {
    dynamic _value = stdin.readLineSync();
    if (_checkInputValue(_value)) {
      outPutResultNumber(int.parse(_value));
    } else {
      print("Vui lòng nhập số nguyên từ 1 đến 3");
      return;
    }
  }

  static outPutDocument() {
    print(
        "Đây Đài tiếng nói Việt Nam, luôn luôn lắng nghe, lâu lâu mới hiểu : ");
    print("Nhấn phím 1 : nghe tiếng việt");
    print("Nhấn phím 2 : gặp tổng viên");
    print("Nhấn phím 3 : để nghe lại");
  }

  static outPutResultNumber(int _number) {
    switch (_number) {
      case 1:
        print("xin chào bạn !!");
        break;
      case 2:
        print("Gặp tổng đài xinh đẹp nè");
        break;
      case 3:
        print("nghe lại gì đó");
        break;
    }
    return;
  }

  static bool _checkInputValue(dynamic _value) {
    int _number = tryParse(_value.toString());

    if (_number != null) {
      if (_number > 0 && _number < 4) return true;
    }
    return false;
  }

  static num tryParse(String input) {
    String source = input.trim();
    return int.tryParse(source) ?? null;
  }

  // tất cả hàm trong 1
  static inPutOutPut() {
    print(
        "Đây Đài tiếng nói Việt Nam, luôn luôn lắng nghe, lâu lâu mới hiểu : ");
    print("Nhấn phím 1 : nghe tiếng việt");
    print("Nhấn phím 2 : gặp tổng viên");
    print("Nhấn phím 3 : để nghe lại");
    String _value = stdin.readLineSync();
    dynamic _number = tryParse(_value);
    if (_number != null) {      
      if (_number > 0 && _number < 4) {
        switch (_number) {
          case 1:
            print("xin chào bạn !!");
            break;
          case 2:
            print("Gặp tổng đài xinh đẹp nè");
            break;
          case 3:
            print("nghe lại gì đó");
            break;
        }
      }
    } else {
      print("Vui lòng nhập số từ 1 đến 3");
      return;
    }
  }
}
