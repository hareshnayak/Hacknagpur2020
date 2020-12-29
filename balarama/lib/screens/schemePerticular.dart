import 'package:flutter/material.dart';

class Scheme extends StatefulWidget {
  @override
  SchemeState createState() {
    return SchemeState();
  }
}

class SchemeState extends State<Scheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKn2JM0AFcW9_buBAmlQfWv2tACkl_AyUltg&usqp=CAU', fit:BoxFit.cover)
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "schemeText[i]",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: 'Inter'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Within",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
