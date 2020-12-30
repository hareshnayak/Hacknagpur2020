import 'package:flutter/material.dart';
import 'package:balarama/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            child: FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance.collection('global').doc('bazaar').get(),
              builder: (context, snapshot){
                if(!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());
                return getListOfProducts(snapshot.data);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getListOfProducts(DocumentSnapshot snapshot){

    List<dynamic> listOfProducts = [];
    snapshot['products'].forEach((key, value){
      listOfProducts.add(value);
    });

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: <Widget>[
        for(int i = 0; i < listOfProducts.length; i++)
          bazaarItem(context, listOfProducts[i]),
      ],
    );
//      ListView.builder(
//      itemCount: listOfProducts.length,
//      shrinkWrap: true,
//      physics: ScrollPhysics(),
//      itemBuilder: (BuildContext context, int i) {
//        return Row(
//          children: <Widget>[
//            for (int j = i; j < 2 && i < listOfProducts.length; j++)
//              bazaarItem(context, listOfProducts[j]),
//         ],
//        );
//      },
//    );
  }

}
