import 'package:flutter/material.dart';
import 'package:news_app2/pages/homePage.dart';
import 'package:dio/dio.dart';

void main() {
  GetNews();
  runApp(const NewsApp());
} 

final dio = Dio();

void GetNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=77a414352ab44b418b41e8c335c9b2cd');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Homepage(),
    );
  }
}
