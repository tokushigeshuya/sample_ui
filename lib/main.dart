// materialの中にはUIを作るための部品が入っている
import 'package:flutter/material.dart';

// fulutterではまずmain.dartのmain()が実行される
void main() {
  // runApp(最初に表示させたいUIと書くことでそのUIが画面に表示される)
  runApp(
    const MyApp(),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // この中に何を書くかで、何が表示されるか決まる。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
            ),
          backgroundColor: Colors.blue,
        ),
        body: const SingleChildScrollView(
          child: Column(
              children: [
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
                TweetTitle(),
              ],
            ),
        ),
      ),
    );
  }
}

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ユーザーアイコンの追加
          CircleAvatar(
            backgroundColor: Colors.white10,
            backgroundImage: NetworkImage('https://kotonohaworks.com/free-icons/wp-content/uploads/kkrn_icon_user_1.png'),
          ),
          SizedBox(width: 8),
          Column(
            // start:左
            // center:中央
            // end：右
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // childrenプロパティにTextのリストを与えます。
                children: [
                  Text('とく@fluter学習'),
                  SizedBox(width: 8,),
                  Text('2024/01/09'),
                ],
              ),
              SizedBox(height: 4,),
              Text('最高でした'),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.favorite_border),
              )
            ],
          ),
        ],
      ),
    );
  }
}
