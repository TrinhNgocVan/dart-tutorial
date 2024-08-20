import 'dart:math';

import 'package:session2_prepaid/session2_prepaid.dart' as session2_prepaid;

late String abc;
void main(List<String> arguments) {
  // nullSafefunction();
  funclateDemo();

  abc = " test";
  print(abc);
  funcOperator();
}

void funcOperator() {
  int i = 1;
  print(i++ + 1);
  print(i);
}

void nullSafefunction() {
  // String test;
  // print("test value  : $test");
  String? test;
  print("test value  : $test");
  int? lineCount;
  assert(lineCount != null);
}

void lab2() {
  int lineCount;

  lineCount = 1;
  // Không cần phải có giá trị khi khởi tạo , nhưng khi dùng bắt buộc phải có giá trị
  print(lineCount);
}

late String test;
void testLateFunc() {
  test = "test value";
  print("test value  : $test");
}

void funclateDemo() {
  late String test = genRandomString(10);
  print("Do somthing else 1 ");
  print(test);
}

const _chars = "abcdefghiklmnopqwsz";
Random _random = Random();
String genRandomString(int length) {
  print("Function gen random string is running");
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));
}
