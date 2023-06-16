import 'package:flutter/material.dart';
import 'package:flutter_dependcy_injection/product/screens/characters_screen.dart';
import 'feature/injection.dart';

void main() {
  Injection().initInstances();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey), useMaterial3: true),
      home: const CharactersScreen(),
    );
  }
}
