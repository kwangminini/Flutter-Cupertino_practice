import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<String> storyList = ["연애 스토리","29 스토리","동그라미"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Story'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: storyList.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Text(index.toString()),
                      Text(storyList[index])
                    ],
                  ),
                )
              );
            }),
      ),
    );
  }
}
