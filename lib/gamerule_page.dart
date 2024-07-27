import 'package:flutter/material.dart';
import 'guess_page.dart';

class GamerulePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面へ戻る'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 800.0), // 左右に80ピクセルの余白を追加
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.search),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'いくつの数で遊びますか？',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GuessPage(
                          inputValue: _controller.text,
                          counter: 1,
                        ),
                      ));
                },
                child: const Text('入力した内容の表示'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
