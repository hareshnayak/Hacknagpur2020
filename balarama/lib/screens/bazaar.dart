import 'package:flutter/material.dart';
import 'package:balarama/resources/strings.dart';

class BazaarPage extends StatefulWidget {
  @override
  _BazaarPageState createState() => _BazaarPageState();
}

class _BazaarPageState extends State<BazaarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Apna Bazaar',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'Comfortaa'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'Get the best Quality at afforadable price',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black54,
                  fontFamily: 'Comfortaa'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 171,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 150,
                        width:
                        (MediaQuery.of(context).size.width - 40) / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(storeUrl[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 150,
                        width:
                        (MediaQuery.of(context).size.width - 40) / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(storeUrl[index + 1]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
