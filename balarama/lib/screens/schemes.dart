import 'package:flutter/material.dart';
import 'package:balarama/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            child: FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance.collection('global').doc('schemes').get(),
              builder: (context, snapshot){
                if(!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());
                return getSchemes(context, snapshot.data);
              }
            ),
          )
        ],
      ),
    );
  }

  Widget getSchemes(BuildContext context, DocumentSnapshot snapshot){
    return ListView.builder(
      itemCount: snapshot['scheme'].length,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int i) {
        return schemeCard(context, snapshot['scheme'][i]);
      },
    );
  }

}
