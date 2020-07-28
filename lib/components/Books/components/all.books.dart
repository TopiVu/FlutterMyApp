import 'package:flutter/material.dart';

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
    final inforBook = Container(child: Column(
      children: <Widget>[
        Text("Harry Potter", style: txtContent, textAlign: TextAlign.right,),
        Text("Giá: 100,000 VNĐ")
      ]
      ));
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            child: Card(
              child: Row(
              children: <Widget>[
                boxImage,
                SizedBox(width: 20,),
                // boxImage,
                inforBook
              ],
            )),
          )),
    );
  }
}

TextStyle txtContent = TextStyle(fontFamily: 'Montserrat', fontSize: 16.0);
