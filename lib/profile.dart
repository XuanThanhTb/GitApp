import 'package:flutter/material.dart';
import 'package:toast/toast.dart';



class ProfileScreen extends StatefulWidget{
  var google = 'https://www.google.com/webhp?hl=vi&sa=X&ved=0ahUKEwi1v8zOg_3jAhVSeXAKHUthAUsQPAgH';
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}
class ProfileScreenState extends State<ProfileScreen>{
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
@override
void _showDailog(){
  showDialog(context: context,
  builder: (BuildContext context){
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      title: Text('Đăng nhập', style: TextStyle(fontSize: 18, color: Colors.black)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical:8),
            child:  TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
               labelText: 'Your username'
            ),
            controller: userName,
            ),
          ),
         Padding(
           padding: EdgeInsets.symmetric(vertical: 8),
           child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: 'Your PassWord'
            ),
            controller: passWord,
          )
         )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('OK', style: TextStyle(color: Colors.black, fontSize: 18),),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text('CANCEL', style: TextStyle(color: Colors.black, fontSize: 18),),
          onPressed: (){
            Navigator.pop(context);
            
            // Navigator.push(context, MaterialPageRoute(builder: (context) => MyGoogle('https://www.google.com/webhp?hl=vi&sa=X&ved=0ahUKEwi1v8zOg_3jAhVSeXAKHUthAUsQPAgH')),);
            Toast.show('Bạn chưa đăng nhập', context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
          },
        ),
      ],
    );
   }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomRight,
        child:Padding(
          padding: EdgeInsets.only(right: 8, bottom: 8),
          child:  FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: _showDailog,
          backgroundColor: Color(0xff00FFFF),
        ),
        )
      )
    );  
  }
}
