import 'dart:math';

void banner() {
  print('==============================================');
}

int sumInt(int a, int b) {
  return a + b;
}

void main(List<String> arguments) {
  banner();
  var tong;               //Khai báo một biến
  var a = 10;             //Khai báo và khởi tạo biến luôn

  tong = sumInt(a, 20);   //Gọi hàm sumInt
  print ('Tổng là: $tong');

  var sqrtvalue = sqrt(tong);
  print('Căn bậc 2 của $tong là $sqrtvalue');
  banner();
}
