import 'package:flutter/material.dart';
import 'package:news_app2/pages/homePage.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const NewsApp());
} 

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
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
