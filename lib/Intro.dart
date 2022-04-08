import 'package:flutter/material.dart';
import 'package:nsrit/staff/staff_intro.dart';

class Intro extends StatefulWidget
{
  @override
  IntroState createState() => IntroState();
}

class IntroState extends State<Intro>
{
  @override
  Widget build(BuildContext context) {

    void move()
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>staff_intro()),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('NSRIT'),
        ),
        body: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             SizedBox(
               width: 100.0,
               height: 40.0,
               child: ElevatedButton(
                   onPressed: (){
                   },
                   child: Text('STAFF')
               ),
             ),

             Divider(
               height: 10.0,
             ),

             SizedBox(
               width: 100.0,
               height: 40.0,
               child: ElevatedButton(
                   onPressed: (){},
                   child: Text('STUDENT')
               ),
             ),
           ],
         ),
        ),
      );
  }
}