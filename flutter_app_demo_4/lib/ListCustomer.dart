import 'package:flutter/material.dart';
import 'package:flutter_app_demo_4/FavoriteCustomer.dart';
import 'package:flutter_app_demo_4/Student.dart';

class ListCustomer extends StatefulWidget {
  @override
  _ListCustomerState createState() => _ListCustomerState();
}

class _ListCustomerState extends State<ListCustomer> {
  List<Student> favorStudent= [];
  List<Student> data = Student.init();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter demo'),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: (){
              Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) => FavoriteCustomer()));
          })
        ],
      ),
      body: Container(
        child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.red,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final alreadySaved = favorStudent.contains(data[index]);
              print(favorStudent.length.toString());
              return buildListTile( index, alreadySaved);
            }),
      ),
    );
}


  ListTile buildListTile( int index, bool alreadySaved) {
    return ListTile(
      leading: data[index].gender == 0
          ? CircleAvatar(
              child: Image.asset('assets/male.jpg'),
            )
          : CircleAvatar(
              child: Image.asset('assets/female.jpg'),
            ),
      title: Text(data[index].name),
      subtitle: Text(data[index].address),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            if(alreadySaved){
              favorStudent.remove(data[index]);
              Student.favorite.remove(data[index]);
            }else{
              favorStudent.add(data[index]);
              Student.favorite.add(data[index]);
            }
          });
          print('hello'+ alreadySaved.toString() );
        },
        child: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
      ),

    );
  }

  Widget buildListItem(List<Student> data, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/male.jpg'),
              ),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(data[index].address),
                  // Divider(color: Colors.red,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
