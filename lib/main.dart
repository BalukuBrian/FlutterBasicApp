import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'app_screens/drawer_fab_listview_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Baluku General App",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const GmailClone(),
    );
  }
}
