import 'dart:math';
import 'L12-1.dart';

void main() {
  print("======== L12 - 1 ========");
  l12_1.outPutDocument();
  l12_1.inPutValue();
  // l12_1.inPutOutPut();

  print(
      "======== L12 - 2  - 1 : in ra màn hình giá trị bất kì của mảng ========");
  List<int> arrayIntNumber = [5, 7, 4, 3, 9];
  var random = new Random();
  int l12_2_1_i = random.nextInt(5);
  print("arrayIntNumber = [5, 7, 4, 3, 9]");
  print("arrayIntNumber[$l12_2_1_i] : ${arrayIntNumber[l12_2_1_i]}");
  print("arrayIntNumber[" +
      l12_2_1_i.toString() +
      "] : " +
      arrayIntNumber[l12_2_1_i].toString());

  print(
      "======== L12 - 2  - 2 : in ra màn hình giá trị bất kì của ma trận ========");
  var matrixIntNumber = [
    [5, 7, 4, 3, 9],
    [6, 9, 2, 7, 5],
    [3, 6, 3, 8, 1],
    [7, 2, 9, 7, 5],
    [5, 4, 3, 5, 9],
  ];

  print("Matrix:");
  print("[5, 7, 4, 3, 9]");
  print("[6, 9, 2, 7, 5]");
  print("[3, 6, 3, 8, 1]");
  print("[7, 2, 9, 7, 5]");
  print("[5, 4, 3, 5, 9]");

  int l12_2_2_i = random.nextInt(5);
  int l12_2_2_j = random.nextInt(5);

  print(
      "matrixIntNumber[$l12_2_2_i][$l12_2_2_j] : ${matrixIntNumber[l12_2_2_i][l12_2_2_j]}");
  print("matrixIntNumber[" +
      l12_2_2_i.toString() +
      "][" +
      l12_2_2_j.toString() +
      "] : " +
      matrixIntNumber[l12_2_2_i][l12_2_2_j].toString());

  print(
      "======== L12 - 2  - 3 : in ra màn hình giá trị bất kì của dữ liệu dạng json ========");
  Map<int, List<int>> matrixIntNumberJson = {
    0: [5, 7, 4, 3, 9],
    1: [6, 9, 2, 7, 5],
    2: [3, 6, 3, 8, 1],
    3: [7, 2, 9, 7, 5],
    4: [5, 4, 3, 5, 9],
  };

  print("Matrix:");
  print("0 : [5, 7, 4, 3, 9]");
  print("1 : [6, 9, 2, 7, 5]");
  print("2 : [3, 6, 3, 8, 1]");
  print("3 : [7, 2, 9, 7, 5]");
  print("4 : [5, 4, 3, 5, 9]");

  int l12_2_3_i = random.nextInt(5);
  int l12_2_3_j = random.nextInt(5);

  print(
      "matrixIntNumberJson[$l12_2_3_i][$l12_2_3_j] : ${matrixIntNumberJson[l12_2_3_i][l12_2_3_j]}");
  print("matrixIntNumberJson[" +
      l12_2_3_i.toString() +
      "][" +
      l12_2_3_j.toString() +
      "] : " +
      matrixIntNumberJson[l12_2_3_i][l12_2_3_j].toString());

  print("======== L12 - 3 : Sắp xếp mảng tăng dần & giảm dần ========");
  List<int> arrayIntNumberL12_3 = [5, 7, 4, 3, 9];
  print("Mảng số tự nhiên : [5, 7, 4, 3, 9]");
  print("sắp xếp tăng dần: " + sort(arrayIntNumberL12_3, "asc").toString());
  print("sắp xếp giảm dần: " + sort(arrayIntNumberL12_3, "desc").toString());

  print("======== L12 - 4 : tìm kiếm phần tử trong mảng ========");
  print("Mảng số tự nhiên : [5, 7, 4, 3, 9]");
  List<int> arrayIntNumberL12_4 = [5, 7, 4, 3, 9];
  print("find number 4: " + findNumber(arrayIntNumberL12_4, 4).toString());
  print("find number 8: " + findNumber(arrayIntNumberL12_4, 8).toString());

  print(
      "======== L12 - 5 : Tìm kiếm phần tử trong mảng dạng nhị phân ========");
  List<int> arrayIntNumberL12_5 = [5, 7, 4, 3, 9, 8];
  print("Mảng số tự nhiên : [5, 7, 4, 3, 9, 8]");
  print(
      "find number 4: " + findNumberNhiPhan(arrayIntNumberL12_5, 4).toString());
  print(
      "find number 2: " + findNumberNhiPhan(arrayIntNumberL12_5, 2).toString());
}

List<int> sort(List<int> _list, String sortType) {
  switch (sortType) {
    case "desc":
      _list.sort((a, b) => b.compareTo(a));
      break;
    case "asc":
      _list.sort();
      break;
  }
  return _list;
}

int findNumber(List<int> _list, int _number) {
  int index = _list.indexOf(_number);
  if (index != -1) return _list[index];
  return null;
}

int findNumberNhiPhan(List<int> _list, int _number) {
  int startIndex = 0;
  int endIndex = _list.length - 1;
  int _resultFind = null;
  while (startIndex <= endIndex) {
    int middleIndex = ((startIndex + endIndex) / 2).floor();

    if (_number == _list[int.parse(middleIndex.toString())]) {
      return _resultFind = _list[int.parse(middleIndex.toString())];
    }

    if (_number > _list[int.parse(middleIndex.toString())]) {
      startIndex = middleIndex + 1;
    }

    if (_number < _list[int.parse(middleIndex.toString())]) {
      endIndex = middleIndex - 1;
    }
  }
  return _resultFind;
}
