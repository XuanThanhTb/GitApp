import 'package:flutter/material.dart';


class MessengerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MessengerScreenState();
  }
}
class MessengerScreenState extends State<MessengerScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: Text('messenger'),
      ),
    );
  }
}