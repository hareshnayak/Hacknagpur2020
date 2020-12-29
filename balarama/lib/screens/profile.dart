import 'package:flutter/material.dart';
import 'package:balarama/resources/strings.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      width: MediaQuery.of(context).size.width,
      child: ListView(
//               mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 165,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      height: 100,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                left: (MediaQuery.of(context).size.width - 140) / 2,
                child: CircleAvatar(
                  radius: 71,
                  backgroundColor: Colors.green.shade900,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(schemeUrl[1]),
                    radius: 70,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 5,
                child: SizedBox(
                  width: 30,
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    onPressed: () {},
                    child: Icon(Icons.menu, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Randheer Singh',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontFamily: 'Inter'),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.phone, size: 15, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        '+91 9818366XXX',
                        style:
                        TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on,
                          size: 20, color: Colors.black),
                      SizedBox(width: 20),
                      Text(
                        'Hisar, Haryana',
                        style:
                        TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 165,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 150,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(customUrl[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 150,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(customUrl[index + 1]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
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
