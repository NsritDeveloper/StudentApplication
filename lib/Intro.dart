import 'package:flutter/material.dart';
import 'package:nsrit/staff/staff_intro.dart';

class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('INTRO'),
        ),
        body: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             ElevatedButton(
                 onPressed: (){

                 },
                 child: Text('STAFF')
             ),

             ElevatedButton(
                 onPressed: (){},
                 child: Text('STUDENT')
             ),
           ],
         ),
        ),
      ),
    );
  }
}