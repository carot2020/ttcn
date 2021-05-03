import 'dart:math';
import 'package:dart_application_demo/example.dart';




void main(List<String> arguments) {
  var tong;               //Khai báo một biến
  var a = 10;             //Khai báo và khởi tạo biến luôn

  tong = sumInt(a, 20);   //Gọi hàm sumInt
  print ('Tổng là: $tong');

  var sqrtvalue = sqrt(tong);
  print('Căn bậc 2 của $tong là $sqrtvalue');

  int tong1 = (var a, var b) { return a + b; } (7,8);
  print('Tong la: $tong1');

  var tong2 = (var a, var b) =>  { a + b} ;
  print('Tong la: $tong2(4,5)');

  print('Tong la: ${tinhtong(a, b:4)}');
  print('Tong la: ${tinhtong2(a)}');





}
