import 'package:baluku_general_app/app_screens/home_page.dart';
import 'package:flutter/material.dart';
import 'app_screens/login_page.dart';

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
      home: const HomePage(),
      // home: const LoginPage(),
      // home: const HomePage(
      //   title: "Home Page",
      // ),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
