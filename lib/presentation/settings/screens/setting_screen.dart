import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('設定')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("郵便番号(天気表示用)"),
                Container(
                    width: 150,
                    // height: 20,
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                          hintText: "1230000(ハイフン無)",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          contentPadding: EdgeInsets.all(10)),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number, // 数字のみを受け入れるように設定
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly, // 数字のみを許可
                        LengthLimitingTextInputFormatter(
                            7), // 最大7桁までの制限（郵便番号の場合）
                      ],
                    )),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
