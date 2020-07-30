import 'package:flutter/material.dart';

const list = [1, 2, 3, 4, 5, 7, 8];

class AllBooksComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxImage = SizedBox(
      height: 80.0,
      width: 80.0,
      child: Image.asset(
        "lib/assets/background.jpg",
        fit: BoxFit.cover,
      ),
    );
    final inforBook = Container(
        child: Column(children: <Widget>[
      Text(
        "Harry Potter",
        style: txtContent,
        textAlign: TextAlign.right,
      ),
      Text("Giá: 100,000 VNĐ")
    ]));
    final boxItem = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      child: Card(
          child: Row(
        children: <Widget>[
          boxImage,
          SizedBox(
            width: 20,
          ),
          // boxImage,
          inforBook
        ],
      )),
    );
    final listView = list.map((e) => boxItem).toList();
    final btnNextP = SizedBox(
      height: 48,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            "Next",
            style: btnNext,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: <Widget>[
          Material(
            // height: ,
            child: Column(
              children: listView,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          btnNextP,
        ]),
      ),
    );
  }
}

TextStyle txtContent = TextStyle(fontFamily: 'Montserrat', fontSize: 16.0);
TextStyle btnNext =
    TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 20.0);
