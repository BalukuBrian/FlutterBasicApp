import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Balbri Login'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        //clipBehavior: Clip.antiAlias, // can be used interchangably with borderRadius
        decoration: const BoxDecoration(
          color: Colors.blue,
          //shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(10),
          // gradient: const LinearGradient(
          //   colors: [Colors.red, Colors.blue],
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            ),
          ],
        ),
        child: const Text(
          "I am Baluku Brian",
          textAlign: TextAlign.justify,
          softWrap: true,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            //fontFamily: Trajan Pro,
            //fontWeight: 700,),
          ),
        ),
      ),
    );
  }
}
