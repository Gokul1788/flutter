import 'package:firebase_core/firebase_core.dart';
import 'package:firestore/Screen.dart';
import 'package:firestore/e-login.dart';
import 'package:firestore/email%20v-signup.dart';
import 'package:firestore/login.dart';
import 'package:flutter/material.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:
  FirebaseOptions(apiKey: "AIzaSyD4L6X3kan9XvDGmLX1DkzccIXycXkcc1g",
      appId: "com.example.firestore",
      messagingSenderId: "1:243359958806:android:b4167326051dc407483237",
      projectId: "firestore-1d51f"
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: eelogin(),
    );
  }
}


