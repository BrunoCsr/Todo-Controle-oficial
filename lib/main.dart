import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'appBase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCL-c1waUriEYcPzR1bwVD5HAzN9kFdxDQ",
        authDomain: "todo-controle-d46f9.firebaseapp.com",
        projectId: "todo-controle-d46f9",
        storageBucket: "todo-controle-d46f9.appspot.com",
        messagingSenderId: "838463675368",
        appId: "1:838463675368:web:af51808afd9418fcdd625d"),
    /*

        apiKey: "AIzaSyB9vAdPHB56wySTWkLEBRdPZbnZvbzwi8Y",
    authDomain: "tdc2-a04ef.firebaseapp.com",
    projectId: "tdc2-a04ef",
    storageBucket: "tdc2-a04ef.appspot.com",
    messagingSenderId: "507057636499",
    appId: "1:507057636499:web:9d3f8e6187632e57303966",
    measurementId: "G-4EZ5WY34Q8"
*/

    /* */
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Controle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}
