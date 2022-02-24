// import 'package:baluku_general_app/app_screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/pages/form_validation_class.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Basic App",
      theme: ThemeData(primarySwatch: Colors.pink),
      // home: const HomePopupMenu(),
      // home: const HomePage(),
      // home: const SafeArea(
      //   child: LoginPage(),
      // ),
      home: const SafeArea(
        child: FormValidationClass(),
      ),
      // home: const HomePage(
      //   title: "Home Page",
      // ),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        // HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
