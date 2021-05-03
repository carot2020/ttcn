import 'package:dart_application_demo_1/dart_application_demo_1.dart' as dart_application_demo_1;

import 'Student.dart';

int tong(int a, int b, int c){
  return a+b+c;
}
dynamic tong2(var a, var b, var c){
  return a+b+c;
}
int tong3(int a, {int b=2, int c=3}){
  return a+b+c;
}
void main(List<String> arguments) {
  // print('Tong 1 la ${tong(1,2,3)}');
  // print('Tong 2 la ${tong2(1,2,3.5)}');
  // print('Tong 3 la ${tong3(1, c:3 )}');

//  var tong2 = (var a, var b) =>   a + b ;
//   print('Tong la: $tong2(4,5)');
 
//  var student = Student.info(1, 'Vu dinh ai', 'Huflit' );
//  print(student.toString());

//  var st1 = Student();
//  st1.id = 10;
//  st1.name = 'abc';
// print(st1.toString());

var st1 = Student();
print(st1.toString());

var st2 = Student(id:10);
print(st2.toString());

var st3 = Student(id:10, name:'ABCBCB');
print(st3.toString());

var studentList = <Student>[];
studentList.add(Student(id: 1, name:'ABC', address: 'ABCBBC'));
studentList.add(Student(id: 2, name:'ABC', address: 'ABCBBC'));
studentList.add(Student(id: 3, name:'ABC', address: 'ABCBBC'));
studentList.add(Student(id: 4, name:'ABC', address: 'ABCBBC'));

for (var item in studentList) {
  print(item.toString());
}
print('');
for (var i = 0; i < studentList.length; i++) {
  print(studentList[i].toString());
}

}
