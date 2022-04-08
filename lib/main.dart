import 'package:flutter/material.dart';
import 'package:nsrit/Intro.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:nsrit/staff/staff_sign_in.dart';
import 'package:nsrit/staff/staff_sign_up.dart';
import 'package:nsrit/student/student_sign_in.dart';
import 'package:nsrit/student/student_sign_up.dart';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Staff_Sign_In());
}

class App extends StatefulWidget
{
  @override
  AppState createState()=> new AppState();
}

class AppState extends State<App>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NSRIT'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Move'),
            onPressed: (){

            },
          ),
        ),
      ),
    );
  }
}

