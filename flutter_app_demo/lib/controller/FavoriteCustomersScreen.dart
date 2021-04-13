import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_app_demo/model/Ultilities.dart';

class FavoriteCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Customer List'),
      ),
      body: Container(
          child: ListView.separated(
            itemCount: Ultilities.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(Ultilities.data[index].fname),
              );
            },
            separatorBuilder: (context, index){
              return Divider();
            },
          )
      ),
    );
  }
}
