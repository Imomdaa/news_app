import 'package:flutter/material.dart';
import 'package:news_app/screens/news_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {NewsScreen.routeName: (context) => NewsScreen()},
      initialRoute: NewsScreen.routeName,
    );
  }
}
