import 'package:flutter/material.dart';
import 'gamerule_page.dart';

void main() {
  runApp(const MyApp()); //MyAppをルートウィジェットに設定, アプリケーションのルートウィジェットにkeyを設定する必要はない
}

class MyApp extends StatelessWidget {
  //StatelessWidgetは一度設定されると変化しないウィジェット．
  const MyApp(
      {super.key}); //MyAppクラスのコンストラクタ, MyApp: サブクラス, StatelessWidget: スーパークラス

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialAppウィジェットはMaterial Designのルックアンドフィールド(LnF)
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*
=>部分は{ return_MyHomePageStateJ(); }と同じ意味
createState()メソッドはStatefulWidgetの中核的な部分
*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); //MyHomePageはコンストラクタ

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //createStateはメソッド
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Welcome to Guessing Number Game!'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text(
                '今すぐ遊ぶ！',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamerulePage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
