import 'package:flutter/material.dart';

class InstallComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    search() {
      return Container(
        margin: new EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 16.0),
        width: MediaQuery.of(context).size.width - 32,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(12.0),
          child: TextField(
              obscureText: false,
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Search books",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ))),
        ),
      );
    }

    boxBooks(text) {
      return Material(
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(text),
          color: Colors.white,
        ),
      );
    }

    final viewBoxBook = CustomScrollView(
      primary: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              boxBooks("He'd have you all unravel at the"),
              boxBooks("Heed not the rabble"),
              boxBooks('Sound of screams but the'),
              boxBooks('Who scream'),
              boxBooks('Revolution is coming...'),
              boxBooks('Revolution, they...'),
              boxBooks("He'd have you all unravel at the"),
              boxBooks("Heed not the rabble"),
              boxBooks('Sound of screams but the'),
              boxBooks('Who scream'),
              boxBooks('Revolution is coming...'),
              boxBooks('Revolution, they...'),
            ],
          ),
        ),
      ],
    );
    return Material(
      child: Column(
        children: <Widget>[
          search(),
          SizedBox(height: MediaQuery.of(context).size.height -310 , child: viewBoxBook)
        ],
      ),
    );
  }
}
