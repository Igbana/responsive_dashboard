import 'package:flutter/material.dart';
import 'utils/themes.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard UI",
      home: HomePage(),
      theme: AppThemes.theme,
    );
  }
}
