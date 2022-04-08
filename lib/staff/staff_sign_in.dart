import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Staff_Sign_In extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {



    void addUser() {
      // Call the user's CollectionReference to add a new user
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference students = FirebaseFirestore.instance.collection('students');

       students
          .add({
        'rollno': '098765Ah', // John Doe
        'password': '02933',
      })
          .then((value) => print("Student Added"))
          .catchError((error) => print("Failed to add user: $error"));

    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Staff'),
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
                    onPressed: (){
                      addUser();
                      print('hi');

                    },
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