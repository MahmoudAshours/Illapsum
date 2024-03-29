import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:illapsum/augmented.dart';
import 'package:illapsum/recognizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR OCR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraPreviewScanner(),
    );
  }
}
