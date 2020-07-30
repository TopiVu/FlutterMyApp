import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const listPanner = [
  "banner1.jpeg", "banner2.jpg", "banner3.png", "banner4.jpg"
  ];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final slideList = CarouselSlider(
      options: CarouselOptions(
      height: 220,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 500),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      // onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   ),
      items: listPanner.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Material( elevation: 5.0 ,child: SizedBox(
                height: 220.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "lib/assets/$i",
                  fit: BoxFit.cover,
                ),
              ),
            ));
          },
        );
      }).toList(),
    );
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: style.copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff01A0C7),
      ),
      body: Center(
          child: Container(
        child: Column(
          children: <Widget>[
            slideList,
            SizedBox(height: 10,),
            SizedBox(height: MediaQuery.of(context).size.height -410 , child: viewBoxBook)
          ],
        ),
      )),
    );
  }
}

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
