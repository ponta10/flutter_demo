import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 30,
                  child :Text('ID'),
                ),
                Text(':ここに表示'),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: const [
                SizedBox(
                  width: 30,
                  child :Text('PW'),
                ),
                Text(':ここに表示'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
