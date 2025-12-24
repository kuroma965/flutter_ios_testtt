import 'package:flutter/material.dart';
// import 'ex1.dart';
import 'package:flutter_app_cls_12_23_68/ex1.dart';
import 'package:flutter_app_cls_12_23_68/ex2.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex2(),
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
    );
  }
}
