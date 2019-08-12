import 'package:flutter/material.dart';
import 'package:get_app/home.dart';
import 'package:get_app/messenger.dart';
import 'package:get_app/profile.dart';

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
  var _selectedPage = 0;
  List<BottomNavigationBarItem> _listBottonbar = [];
  final _pageOptions = [
    HomeScreen(),
    MessengerScreen(),
    ProfileScreen(),
  ];
  void initState(){
    Constants.botton.map((item){
      return _listBottonbar.add(
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          activeIcon: Image.asset(item.icon, color: Color(0xffC6CE2F),  width: 25, height: 25,),
          icon: Image.asset(item.icon, width: 25, height: 25,),
          title: Padding(
            child: Text(item.name,),
            padding: EdgeInsets.only(top: 8),
          )
        )
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: null,
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor:  Color(0xffB4B49D),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
             _selectedPage = index; 
            });
          },
          items: _listBottonbar,
        ),
      ),
    );
  }
}
class Choices{
  String name;
  String icon;
  Choices(this.name, this.icon);
}
class Constants{
  static List<Choices> botton = [
    Choices('Home', 'lib/images/home.png'),
    Choices('Messenger', 'lib/images/messenger.png'),
    Choices('Profile', 'lib/images/prolife.png'),
  ];
}