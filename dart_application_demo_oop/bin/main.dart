
import 'package:dart_application_demo_oop/Product.dart';
void main(List<String> arguments) {
  var product =  Product(600, quantity: 1); 
  product.showTotal(); 
  product.quantity = 2; 
  product.showTotal(); 

  var product2 = Product.iphone(700, quantity: 2);
  print(product2.toString());

  //print(Product(manufacture : 'Apple', price: 800, quantity: 1000);
}
