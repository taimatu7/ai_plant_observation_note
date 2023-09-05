import 'package:ai_plant_observation_note/presentation/plantation/screens/plantation_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _screens = [
    const PlantationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.square), label: '区画を追加'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '植物を追加'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: '観察ノート一覧'),
        ],
      ),
    );
  }
}
