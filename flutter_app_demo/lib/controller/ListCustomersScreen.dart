import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_app_demo/controller/CustomerProfileScreen.dart';
import 'package:flutter_app_demo/model/Customers.dart';
import 'package:flutter_app_demo/model/Ultilities.dart';

import 'FavoriteCustomersScreen.dart';


class ListCustomerScreen extends StatefulWidget {
  @override
  _ListCustomerScreenState createState() => _ListCustomerScreenState();
}

class _ListCustomerScreenState extends State<ListCustomerScreen> {

  List<Customer> customerList = [] ;
  List<Customer> favorCustomer = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    readDataFromAssets();
    return Scaffold(
        appBar: AppBar(title: const Text('Customer Lists'),actions: [
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavoriteCustomerScreen()));
              }),
        ]),
        body: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: customerList.length,
            itemBuilder: (context, index) {
              final alreadySaved = favorCustomer.contains(customerList[index]);
              return buildCustomerWidget(index, alreadySaved);})
    );
  }

  Widget buildCustomerWidget(int index, bool alreadySaved) {
    return Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(customerList[index].avatar),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customerList[index].fname,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    customerList[index].phone,
                    style: TextStyle(fontSize: 16,),
                  )
                ],
              ),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    if (alreadySaved) {
                      favorCustomer.remove(customerList[index]);
                      Ultilities.data.remove(customerList[index]);
                    } else {
                      favorCustomer.add(customerList[index]);
                      Ultilities.data.add(customerList[index]);
                    }
                  });
                },
                child: Icon(
                  alreadySaved ? Icons.favorite : Icons.favorite_border,
                  color: alreadySaved ? Colors.red : null,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) => CustomerProfileScreen(customerList[index]) ));
              },
            ),

          Divider( height: 12,),
        ],
    );
  }

  void readDataFromAssets() async{
    String data = await DefaultAssetBundle.of(context).loadString("assets/customers.json");
    customerList.addAll(Ultilities().getCustomer(data));
  }
}
