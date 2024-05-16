import 'package:flutter/material.dart';
import 'package:newsapi/widget/home.dart';

void main() {
  runApp(const NewsMainPage());
}

class NewsMainPage extends StatelessWidget {
  const NewsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      debugShowCheckedModeBanner: false,
      title: "Noticias",
      home: const NewsHomePage(),
    );
  }
}