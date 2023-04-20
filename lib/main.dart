import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './views/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Calculator',
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[600]),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[600]),
      ),
      themeMode: ThemeMode.dark,
      home: CalculatorPage(),
    );
  }
}
