import 'dart:math';
import 'package:flutter/material.dart';

class GuessPage extends StatefulWidget {
  final String inputValue;
  final int counter;
  GuessPage({required this.inputValue, required this.counter});

  @override
  _GuessPageState createState() => _GuessPageState();
}

class _GuessPageState extends State<GuessPage> {
  @override
  Widget build(BuildContext context) {
    final int maxValue = int.tryParse(widget.inputValue) ?? 1;
    final Random random = Random();
    final int randomValue =
        random.nextInt(maxValue) + 1; //1から指定された値までのランダム整数を生成

    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('数を選び直す'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '【${widget.counter}回目】',
              style: const TextStyle(fontSize: 60),
            ),
            Text('1から${widget.inputValue}までの数を当てろ！',
                style: const TextStyle(fontSize: 50)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                bool isEven = randomValue % 2 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result: 'その数は${isEven ? "偶数" : "奇数"}です。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('偶数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_three = randomValue % 3 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_three ? "3の倍数です" : "3の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('3の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_four = randomValue % 4 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_four ? "4の倍数です" : "4の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('4の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_five = randomValue % 4 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_five ? "5の倍数です" : "5の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('5の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_six = randomValue % 6 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_six ? "6の倍数です" : "6の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('6の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_seven = randomValue % 7 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_seven ? "7の倍数です" : "7の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('7の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_eight = randomValue % 8 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_eight ? "8の倍数です" : "8の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('8の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool is_multiple_nine = randomValue % 9 == 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JudgeEvenPage(
                      result:
                          'その数は${is_multiple_nine ? "9の倍数です" : "9の倍数ではありません"}。',
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: const Text('9の倍数ですか？'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuessInputPage(
                      counter: widget.counter + 1,
                      inputValue: widget.inputValue,
                    ),
                  ),
                );
              },
              child: Text('${widget.counter}回目に数を推定しますか？'),
            ),
          ],
        ),
      ),
    );
  }
}

class JudgeEvenPage extends StatelessWidget {
  final String result;
  final int counter;
  final String inputValue;

  JudgeEvenPage(
      {required this.result, required this.counter, required this.inputValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '【$counter回目の結果】',
              style: TextStyle(fontSize: 30),
            ),
            Text(result, style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        GuessPage(inputValue: inputValue, counter: counter),
                  ),
                );
              },
              child: const Text('もう一度選択する'),
            ),
          ],
        ),
      ),
    );
  }
}

class GuessInputPage extends StatelessWidget {
  final counter;
  final inputValue;
  final TextEditingController _controller = TextEditingController();
  GuessInputPage({required this.counter, required this.inputValue});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('戻る'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration.collapsed(
                hintText: '数を当ててください',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GuessPage(
                          inputValue: _controller.text, counter: counter),
                    ));
              },
              child: const Text('入力した内容の表示'),
            )
          ],
        ),
      ),
    );
  }
}
