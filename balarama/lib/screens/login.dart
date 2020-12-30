import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.green),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -((MediaQuery.of(context).size.width) * 0.5),
            left: 50,
            child: Container(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.width * 2,
              decoration: new BoxDecoration(
//                 image: new DecorationImage(
//                 image: new NetworkImage('https://pixabay.com/photos/lavender-flowers-purple-wild-plant-1117275'),fit: BoxFit.cover,
//                 ),
                color: Colors.white,
                shape: BoxShape.circle,
              ),            
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height) * 0.3,
            left: (MediaQuery.of(context).size.width) * 0.5 - 50,
            child: Column(children: <Widget>[
              Container(
              height: 100,
              width: 100,
              decoration: new BoxDecoration(
                color: Colors.grey,
//                 image: new DecorationImage(
//                 image: new NetworkImage('https://pixabay.com/photos/agriculture-wheat-field-wheat-1845835/'),
//                 fit: BoxFit.cover,),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            Container(
//             child: RichText(text: 'BALARAMA',style: TextStyle(),text:'\nALL A FARMER NEEDS')
            ),            
            ],),
          ),
          Positioned(
            bottom: 70,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),              
              child: FlatButton(
                onPressed:(){},
                padding: EdgeInsets.all(0),
                child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Login with Google",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      letterSpacing: -0.3),
                    ),
                  )
                ],
              ),)
            ),
          ),
        ],
      ),
    ));
  }
}
