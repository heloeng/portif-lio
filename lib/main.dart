import 'package:flutter/material.dart';
import 'package:portifolio/src/splash/animacao_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portifólio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnimacaoPage(),
    );
  }
}
