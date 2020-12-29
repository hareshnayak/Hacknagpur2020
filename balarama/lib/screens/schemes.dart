import 'package:flutter/material.dart';
import 'package:balarama/resources/strings.dart';

class SchemesPage extends StatefulWidget {
  @override
  _SchemesPageState createState() => _SchemesPageState();
}

class _SchemesPageState extends State<SchemesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'sarkaar ki scheme',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Comfortaa'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Schemes of the govt.',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black54,
                        fontFamily: 'Comfortaa'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 150,
            child: ListView.builder(
              itemCount: 5,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                        BoxDecoration(color: Colors.grey.shade200),
                      ),
                      Positioned(
                        top: 5,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                              child: Image.network(schemeUrl[i],
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width,
//                               height: 70,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  schemeText[i],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      fontFamily: 'Inter'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 85,
                        right: 10,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blue.shade900,
                          child: Text(
                            'Read More',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Comfortaa',
                                letterSpacing: -0.3),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
