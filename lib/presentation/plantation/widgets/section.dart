import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(Object context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Container(child: Text('Section名'), alignment: Alignment.topLeft),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.brown,
                      child: Container(
                        color: Colors.white,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.brown,
                      child: Container(
                        color: Colors.white,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.brown,
                      child: Container(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
