import 'package:flutter/material.dart';
import 'models/pages/main_page.dart';   // your MainPage file
import 'models/pages/item_page.dart';  // your ItemPage file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Retro Game Store',
      theme: ThemeData.dark(),
      
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/item': (context) => const ItemPage(),
      },
    );
  }
}
