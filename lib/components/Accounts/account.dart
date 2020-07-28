import 'package:flutter/material.dart';

import '../../login.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final btnLogout = Material(
      color: Color(0xff01A0C7),
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width - 32 * 2,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),);},
        child: Text("Log out", style:  style.copyWith(color: Colors.white, fontWeight: FontWeight.bold) ),
    ));
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Account Page', style: style.copyWith(fontWeight: FontWeight.bold),),
      //   backgroundColor: Color(0xff01A0C7),
      // ),
      body: Center(
        child: Column( 
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               SizedBox(
                      height: 255.0,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "lib/assets/background.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
              SizedBox(height: 200,),
              btnLogout
           ]
         )
      ),
    );
  }
}
TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);