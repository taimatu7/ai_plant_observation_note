import 'package:ai_plant_observation_note/presentation/component/endDrawer.dart';
import 'package:ai_plant_observation_note/presentation/plantation/widgets/section.dart';
import 'package:ai_plant_observation_note/presentation/plantation/widgets/weather_info_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlantationScreen extends ConsumerWidget {
  const PlantationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('植物観察ノート'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.orange[100],
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      Section(),
                      SizedBox(height: 10),
                      Section(),
                      SizedBox(height: 10),
                      Section(),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 3,
            child: WeatherInfoArea(),
          ),
        ],
      ),
    );
  }
}
