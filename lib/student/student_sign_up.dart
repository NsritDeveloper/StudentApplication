import 'package:flutter/material.dart';

class Student_Sign_Up extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Roll Number',
                  ),
                ),

                Divider(
                  height: 10,
                ),

                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Branch',
                  ),
                ),

                Divider(
                  height: 10,
                ),

                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Batch',
                  ),
                ),

                Divider(
                  height: 10,
                ),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),

                Divider(
                  height: 10,
                ),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),

                ElevatedButton(
                  onPressed: (){},
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}