import 'package:flutter/material.dart';
import 'package:flutter_listview/pdf_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPdfViewer(),
      // MyHomePage(),
    );
  }
}
