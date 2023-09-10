import 'package:ai_plant_observation_note/presentation/observation_note/screens/observation_lis_screen.dart';
import 'package:ai_plant_observation_note/presentation/plant_manegement/screens/plant_management_screen.dart';
import 'package:ai_plant_observation_note/presentation/settings/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _screens = [
    PlantManagementScreen(),
    ObservationNoteScreen(),
    SettingScreen(),
  ];
  final _tabBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.square,
          size: 10,
        ),
        label: '植物管理'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_sharp, size: 10), label: '観察ノート一覧'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings, size: 10), label: '設定'),
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
        items: _tabBarItems,
      ),
    );
  }
}
