import 'package:ai_plant_observation_note/routes/routes.dart';

import 'presentation/plantation/screens/plantation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '植物観察ノート',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const PlantationScreen(),
      routes: routes,
    );
  }
}
