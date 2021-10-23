import 'package:flutter/material.dart';
import 'package:springredditclone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: const Color(0xFFD2D6E3),
        primaryColor: Colors.blue[700],
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.red,
            ),
      ),
      home: const MyHomePage(),
    );
  }
}
