import 'package:flutter/material.dart';
import 'package:khmerautocolor/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.yellow,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      themeMode: ThemeMode.system, // Automatically switch between light and dark mode
      home: const Home(),
    );
  }
}
