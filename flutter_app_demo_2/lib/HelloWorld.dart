import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Kindacode.com'),
        // This button triggers the _showDatePicker function
        trailing: Container(child: CupertinoButton(
          padding: EdgeInsetsDirectional.zero,
          child: Text('Show Picker'),
          onPressed: () => _showDatePicker(context),
        ),),
      ),
      child: SafeArea(
        child: Center(
          child: Text(_chosenDateTime != null
              ? _chosenDateTime.toString()
              : 'No date time picked!'),
        ),
      ),
    );
  }

  DateTime _chosenDateTime;

  void _showDatePicker(ctx) {
    // showCupertinoModalPopup is a built-in function of the cupertino library
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle:TextStyle(color: Colors.deepPurple, fontSize: 16) ,
                  pickerTextStyle: TextStyle(color: Colors.deepPurple, fontSize: 16)
              ),
              brightness: Brightness.light
            ),
          child: Container(
            height: 500,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      mode:   CupertinoDatePickerMode.date,
                      onDateTimeChanged: (val) {
                        setState(() {
                          _chosenDateTime = val;
                        });
                      }),
                ),

                // Close the modal
                CupertinoButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.of(ctx).pop(),
                )
              ],
            ),

        )));
  }
}


