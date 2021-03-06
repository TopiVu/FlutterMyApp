import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/Accounts/account.dart';
import 'package:my_app/components/Books/books.dart';
import 'package:my_app/components/Home/home.dart';
import 'package:my_app/login.dart';

void main() => runApp(MyApp());

class MainPage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[HomePage(), BookPage(), AccountPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff01A0C7),
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.book_sharp, size: 30),
          Icon(Icons.account_box, size: 30),
        ],
        onTap: _onItemTapped,
      ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text('Home'),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.book_sharp),
      //         title: Text('Books'),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.account_box),
      //         title: Text('Account'),
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Color(0xff01A0C7),
      //     onTap: _onItemTapped,
      //   ),
      // );
    );
  }
}
// Scaffold(
//   bottomNavigationBar: CurvedNavigationBar(
//     backgroundColor: Colors.blueAccent,
//     items: <Widget>[
//       Icon(Icons.add, size: 30),
//       Icon(Icons.list, size: 30),
//       Icon(Icons.compare_arrows, size: 30),
//     ],
//     onTap: (index) {
//       //Handle button tap
//     },
//   ),
//   body: Container(color: Colors.blueAccent),
// )
