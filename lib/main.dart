import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Git App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Git Data', style: TextStyle(color: Colors.black, fontSize: 24),),
          backgroundColor: Colors.yellow,
        ),
        body: GitApp(),
      ),
    );
  }
}
class GitApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GitAppState();
  }
}
class GitAppState extends State<GitApp>{
  @override
  Widget build(BuildContext context) {
    return null;
  }
}