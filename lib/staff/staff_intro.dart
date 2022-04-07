import 'package:flutter/material.dart';

class staff_intro extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Staff'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('SIGN IN'),
                onPressed: (){},
              ),

              ElevatedButton(
                child: Text('SIGN UP'),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}