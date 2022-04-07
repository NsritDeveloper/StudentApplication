import 'package:flutter/material.dart';

class Staff_Sign_In extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Staff Sign In'),
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
                    labelText: 'Staff Id',
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

                ElevatedButton(
                    onPressed: (){},
                    child: Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}