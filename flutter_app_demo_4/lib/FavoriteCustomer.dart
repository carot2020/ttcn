import 'package:flutter/material.dart';
import 'package:flutter_app_demo_4/Student.dart';

class FavoriteCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Customer'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Student.favorite.length,
            itemBuilder: (context, index){
            return ListTile(
              title: Text(Student.favorite[index].name),
            );
            })
      ),
    );
  }
}
