import 'package:balarama/screens/bazaar.dart';
import 'package:balarama/screens/posts.dart';
import 'package:balarama/screens/profile.dart';
import 'package:balarama/screens/schemes.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: 4);
    _tabController.addListener(
      () {
        if (_tabController.index == 0) {
          showFab = true;
        } else {
          showFab = false;
        }
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       appBar: AppBar(
//         title: Text("WhatsApp"),
//         elevation: 0.7,
//         actions: <Widget>[
//           Icon(Icons.search),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5.0),
//           ),
//           Icon(Icons.more_vert)
//         ],
//       ),
      bottomNavigationBar: Container(
        color: Colors.green,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.book)),
            Tab(icon: Icon(Icons.store)),
            Tab(icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PostsPage(),
            SchemesPage(),
            BazaarPage(),
            ProfilePage(),
          ],
        ),
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
    );
  }
}
