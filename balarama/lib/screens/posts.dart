import 'package:flutter/material.dart';
import 'package:balarama/resources/strings.dart';

class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: ListView.builder(
          itemCount: schemeUrl.length,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int i) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.grey,
                        height: 350,
                        child: Image.network('${schemeUrl[i]}',
                            fit: BoxFit.cover)),
                    Positioned(
                      top: 20,
                      right: 10.0,
                      child: Container(
                        color: Colors.transparent,
                        child: Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              '${teamMem[i]}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            child: FlatButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {},
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 21,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                        '${schemeUrl[i]}',
                                      )),
                                )),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      top: 260.0,
                      left: 0.0,
                      right: 0.0,
//                 child: Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        color: Colors.black26,
//                     height: MediaQuery.of(context).size.height,
                        height: 100,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Column(
                            children: <Widget>[
//                             Container(height: 2, color: Colors.white70),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Urban Living',
                                    style:
                                    TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                      'In today\'s world it is really important to be ...',
                                      style: TextStyle(
                                          color: Colors.white70)))
                            ],
                          ),
                        ),
                      ),
//                 ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 50,
//                     width: 250,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade900,
                                  offset: Offset(0.0, 3.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.4),
                                  width: 1.0),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
//                           SizedBox(width: 20),
                              SizedBox(
                                width: 50,
                                child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: Icon(Icons.thumb_up,
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                width: 50,
                                child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: Icon(Icons.comment,
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                width: 50,
                                child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: Icon(Icons.share,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
