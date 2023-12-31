import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon','楽天','Yahoo!','microsoft'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('ぽんぽんプログラミング'),
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.key),
                  title: Text(titleList[index]),
                  onTap: (){
                    print('たっぷされたよ');
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => NextPage(titleList[index])));
                  },
                ),
                Divider(height: 0,),
              ],
            );
          }) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('Twitter');
          print(titleList);
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
