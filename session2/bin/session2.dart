import 'dart:math';

import 'package:session2/session2.dart' as session2;

// late : khi nao dung moi khoi tao

void nullSafeFunction() {
  String test; //  -> later init
  test = " test string";
  // khong require khi khai bao  , require gia tri khi dung
  // java data null >> object (String,Integer...)
  // Dart   null != Integer , String , Double
  print("Test value : $test");
}

void funcLateDemo() {
  late String test = genRandomString(10); // 1 => 2
  print("Do something else"); // 2 => 1
  print(test); // 3 => 3
  int i;
}

Random _random = Random();
String _allChars = "abcdefghiklmnopquvxyz123456789";

String genRandomString(int length) {
  print("Go into function genRandomeString");
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _allChars.codeUnitAt(_random.nextInt(_allChars.length))));
}

// void main(List<String> arguments) {
//   // funcLateDemo();
//   //  Go into function genRandomeString -> Do something else -> test value
//   // Do something else -> Do something else -> test value

//   // 3 4 2 1 5
//   // 3 2 4 1 5
//   // 3 2 1 4 5
//   // 2 1 3 4 5 // Lan 1 : chac chan so cuoi la so lon nhat
//   // 1 2 4 4 5  // Lan 2 so sat so cuoi cung  (la so lon t2)
//   // n*n , n(n+1)/2  =  1 + 2+ 3 + ... + n
//   // 1000.000 vs 500000
//   var arr = [3, 4, 2, 1, 5];
//   // bubbleSortAscending(arr);
//   recursiveBubbleSort(arr, arr.length);
//   print(arr);
// }

void bubbleSortAscending(List<int> arr) {
  int n = arr.length;
  if (n == 1) return;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - 1 - i; j++) {
      // compare arr[j] vs arr[j+1]
      if (arr[j] > arr[j + 1]) {
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

// funcName(params) <<<< responseType funcName(params)

// // 1 .normal
// String getFullname(String firstName, String lastName) {
//   return "$firstName $lastName";
// }

// // 2. arrow fucntion
// String getFullName1(String firstName, String lastName) =>"$firstName $lastName";

// 3. Chia theo param : name param vs position param , required vs not required

//3.1 require positional
// String getFullname(String firstName, String lastName) {
//   return "$firstName $lastName";
// }

// 3.2 optional positional : cac bien optional duoc de trong []
// String getPerson(String name, [int? age, double? weight]) {
//   return "";
// }

// 3.3 required named param

// String getPerson(
//     {required String name, required int age, int height = 0, int weight = 0}) {
//   return "";
// }
// void getPerson(String name ,  [int? age]){

// }
void getPerson(int? age, int height,
    {required String name, required int weight}) {}
// void getPerson(int? age , { String? name}){}

// Operator:
/// so hoc  :  + , - , * , / , ~/ (chia lay phan nguyen ) , % chia lay so du
///  so sanh  > , < , >= , <= , == , !=
///  Toan tu check  kieu du lieu : is (true neu co kieu du lieu nv) >< is!
///  toan tu logic :  && (va) , ||  , !\
///                    & , |

main() {
  // getPerson("A");
  // getPerson("A", 21);
  // getPerson("A", 20, 50);
  // getPerson("A", null, 51);

  // getPerson(name: "john doe", age: 18, height: 180, weight: 80);
  // getPerson( age: 18,name: "john doe", height: 180, weight: 80);
  //  getPerson( height: 180, weight: 80);
}

// Day max value ve cuoi cung cua hang -> cho den khi nao hang truyen vao co dung 1 gia tri (n = 1)
void recursiveBubbleSort(List<int> arr, n) {
  if (n == 1) return;

  for (int i = 0; i < n - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      var temp = arr[i];
      arr[i] = arr[i + 1];
      arr[i + 1] = temp;
    }
  }
  recursiveBubbleSort(arr, n - 1);
}

void bubbleSortDescending(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] < arr[j + 1]) {
        // Hoán đổi arr[j] và arr[j + 1]
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}
