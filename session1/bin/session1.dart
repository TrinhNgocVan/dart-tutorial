import 'package:session1/session1.dart' as session1;

class Student {
  final String name;
  final double point;
  const Student({required this.name, required this.point});
  // Student(this.name, this.point);
}

void main(List<String> arguments) {
  var student1 = const Student(name: "Student1", point: 100);
  var student2 = const Student(name: "student2", point: 200);

  // variables in program ???
  // Null safety : int (cannot be null) : NullpointerException
  //(Unchecked in java -> checked exception in Dart )

  // int age = null; - not nulable
  // var age = 21;
  // // type safe
  // age = 10; // string cannot asign for
  // // dynamic : whatever data type
  // dynamic num = 1;
  // num = "";
  // num = null;
  // // late :
  // int totalAmount ;
  // int totalAmount = null;

  late int totalAmount = caculateTotalAmount();
  // late int  totalAmount = caculateTotalAmount();
  // khai báo biến non-nullable >< ko muốn khởi tạo giá trị lúc khai báo
  // khởi tạo giá trị cho lần đầu sử dụng

  // DataType : Numbers(int , double) , String , bool , List , Set . Map, Null
  bool test = true;
  test = false;

  //  var  vs dynamic
  var i = 1; // keywork
  dynamic j = 1; // datatype

  // const  vs final

  // final int a = 1;
  // a = 2; // wrong :a already have value

  final students = ["student1", "student2", "student3"];
  // students = ["test"];
  students[1] = "student change";
  students.add("test");
  print(students);

  // declaire variable
  // int a = 1;
  // int b = 1;
  // int c = 1;

  String name = "John Doe";
  int age = 20;
  String address = "USA";
  print("name  is : $name");
  print("age :  $age");
  print("adress : $address");

  // 0 1 1 2 3 5 8 13 21 34 ....
  // i -> fibonaci(1)
}

int caculateTotalAmount() {
  return 1;
}
