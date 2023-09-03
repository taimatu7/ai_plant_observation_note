import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(title: Text("区画を追加")),
          ListTile(title: Text("植物を追加")),
          ListTile(title: Text("植物を観察ノート一覧"))
        ],
      ),
    );
  }
}
