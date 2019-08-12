import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}
class HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: null,
      body: Center(
        child: Text('Hiển thị dữ liệu chính.', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
      ),
    );
  }
}