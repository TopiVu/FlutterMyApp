
import 'package:flutter/material.dart';
import 'package:my_app/components/Books/components/all.books.dart';

class BookPage extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("All", style: txtTabBar)),
                Tab(child: Text("Hot Books", style: txtTabBar)),
                Tab(child: Text("Installed", style: txtTabBar)),
              ],
            ),
            title: Text('Books Page'),
            backgroundColor: Color(0xff01A0C7),
          ),
          body: TabBarView(
            children: [
              AllBooksComponent(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
TextStyle txtTabBar = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Montserrat');