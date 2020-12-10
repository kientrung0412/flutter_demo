import 'package:flutter/material.dart';
import 'file:///C:/Users/nguye/ApkProjects/flutter_app/lib/base/base_input.dart';
import 'package:flutter_app/screen/login_screen.dart';
import 'package:flutter_app/switch_language.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
