import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer App',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: const MyHomePage(title: 'Drawer App'),
      // routes: <String, WidgetBuilder>{
      //   "/a": (BuildContext context) => NewPage("New Page")
      // },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer App'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Baluku Brian'),
              accountEmail: Text("balbri0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.deepPurple
                        : Colors.white,
                child: Text('BB'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('B'),
                )
              ],
            ),
            ListTile(
              title: Text('Page One'),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page One")));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Page Two'),
              trailing: Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page Two")));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Page Three'),
              trailing: Icon(Icons.close),
              //closing the
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
