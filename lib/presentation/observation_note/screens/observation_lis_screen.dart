import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ObservationNoteScreen extends StatefulWidget {
  const ObservationNoteScreen({Key? key}) : super(key: key);

  @override
  _ObservationNoteScreenState createState() => _ObservationNoteScreenState();
}

class _ObservationNoteScreenState extends State<ObservationNoteScreen> {
  final DateTime _today = DateTime.now();
  DateTime _focused = DateTime.now();
  DateTime? _selected;
  Map<DateTime, List> _eventsList = {};

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    super.initState();

    _selected = _focused;
    _eventsList = {
      DateTime.now().subtract(Duration(days: 2)): ['トマトA日記', 'トマトB日記'],
      DateTime.now(): [
        'トマトA日記',
        'トマトB日記',
        '二十日大根日記',
        'かいわれ大根日記',
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List getEvent(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Center(child: const Text('観察ノート一覧'))),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(_today.year - 2, _today.month, _today.day),
              lastDay: DateTime.utc(_today.year + 2, _today.month, _today.day),
              focusedDay: _focused,
              eventLoader: getEvent,
              selectedDayPredicate: (day) {
                return isSameDay(_selected, day);
              },
              onDaySelected: (selected, focused) {
                if (!isSameDay(_selected, selected)) {
                  setState(() {
                    _selected = selected;
                    _focused = focused;
                  });
                }
              },
            ),
            ListView(
              shrinkWrap: true,
              children: getEvent(_selected!)
                  .map((event) => ListTile(
                        title: Text(event.toString()),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
