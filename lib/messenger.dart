import 'package:flutter/material.dart';


class MessengerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MessengerScreenState();
  }
}
class MessengerScreenState extends State<MessengerScreen>{
  TextEditingController textEditingController = TextEditingController();
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration.collapsed(
            hintText: 'UserName',
          ),
          controller: textEditingController,
        )
      ),
    );
  }
}