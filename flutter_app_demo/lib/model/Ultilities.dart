import 'dart:convert';

import 'package:flutter_app_demo/model/Customers.dart';

class Ultilities {
  static List<String> data1 = new List();
  static List<Customer> data = new List();
  List<Customer> getCustomer(String json){
      var list = jsonDecode(json)['data'] as List;
      List<Customer> tmp = list.map((e) => Customer.fromJson(e)).toList();
      return tmp;
  }
}