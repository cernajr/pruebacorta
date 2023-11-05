import 'package:flutter/material.dart';
import 'package:pruebacorta/clases/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      home: RealEstateApp(),
    );
  }
}

