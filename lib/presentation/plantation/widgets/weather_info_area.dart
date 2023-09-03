import 'package:flutter/material.dart';

class WeatherInfoArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Icon(Icons.cloud, size: 90),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('今日の天気'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('天気 : 晴れ'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('気温 : 34℃'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('湿度 : 73%'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
