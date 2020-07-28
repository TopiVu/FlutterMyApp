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
      height: 300,
      aspectRatio: 16/9,
      viewportFraction: 1,
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
                height: 300.0,
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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Home Page',
      //     style: style.copyWith(fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Color(0xff01A0C7),
      // ),
      body: Center(
          child: Container(
        child: Column(
          children: <Widget>[
            slideList,

          ],
        ),
      )),
    );
  }
}

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
