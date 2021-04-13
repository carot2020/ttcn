import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_demo/model/Customers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerProfileScreen extends StatelessWidget {

  Customer customer;

  CustomerProfileScreen(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(customer.avatar),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildTextField(customer.fname +" "+ customer.lname, Icons.account_box),
            buildTextField(customer.phone, Icons.phone_iphone),
            buildTextField(customer.email, Icons.email_rounded),
            buildTextField(customer.gender, null),
            buildIconSocial()
          ],
        ),)
    );
  }

  Widget buildTextField(String text, IconData icon ){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2
          ),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            icon == null ? ImageIcon(AssetImage('assets/sexism_1.png'), color: Colors.blue,): Icon(icon, color: Colors.blue,),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
          ],
        ),
      ),
    );
  }

  Widget buildIconSocial() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                        child: SvgPicture.asset('assets/facebook-2.svg'),),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  decoration:
                  BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/google-icon.svg'),),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  decoration:
                  BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/twitter.svg'),)
      ])),
    );
  }
}
