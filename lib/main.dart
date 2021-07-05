///To God be the Glory

import 'package:flutter/material.dart';
import 'package:newapp/screens/NavScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen());
  }
}
