import 'package:ai_plant_observation_note/presentation/plant_manegement/widgets/section.dart';
import 'package:ai_plant_observation_note/presentation/plant_manegement/widgets/weather_info_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlantManagementScreen extends ConsumerWidget {
  const PlantManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('植物管理')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
