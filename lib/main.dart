import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/home-screen.dart';

void main() {
  runApp(const MyApp()); //изменения тест
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: ksecondaryColor),
          bodyMedium: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
