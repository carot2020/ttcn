import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;
import 'package:dart_application_2/Student.dart';
void main(List<String> arguments) {
  var student =  Student('Vu dinh Ai');
 // print(student.toString());
  var student2 = Student('Vu Ai My', gender : 0, address : 'Tan phu');
 // print(student2.toString());

  var data = <Student>[];
  data.add(student);
  data.add(student2);

  for (var i = 0; i < data.length; i++) {
    print(data[i].toString());
  }
  print('----');
  for (var item in data) {
    print(item.toString());
  }
  print('----');
  data.forEach((element) {print(element.toString());});








}
