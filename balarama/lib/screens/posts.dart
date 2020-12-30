import 'package:balarama/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      height: MediaQuery
          .of(context)
          .size
          .height - 5,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: FutureBuilder<DocumentSnapshot>(
          future: FirebaseFirestore.instance.collection('global')
              .doc('posts')
              .get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return getListOfPosts(snapshot.data);
          }
      ),
    );
  }

  Widget getListOfPosts(DocumentSnapshot snapshot) {

    List<dynamic> listOfPosts = [];
    snapshot['posts'].forEach((key, value){
      listOfPosts.add(value);
    });

    return ListView.builder(
      itemCount: listOfPosts.length,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int i) {
        return PostCard(data: listOfPosts[i]);
      },
    );
  }

}
