
import 'package:effective_flutter_lab/Screens/mainscreen.dart';
import 'package:effective_flutter_lab/Screens/options.dart';
import 'package:effective_flutter_lab/Screens/profile.dart';
import 'package:effective_flutter_lab/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: MainScreen(),
    );
  }
}
