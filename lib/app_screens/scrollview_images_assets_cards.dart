import 'package:flutter/material.dart';

class ScrollviewCardAndImageAssets extends StatefulWidget {
  const ScrollviewCardAndImageAssets({Key? key}) : super(key: key);

  @override
  State<ScrollviewCardAndImageAssets> createState() =>
      _ScrollviewCardAndImageAssetsState();
}

class _ScrollviewCardAndImageAssetsState
    extends State<ScrollviewCardAndImageAssets> {
  var myText = "I love my Bujju";
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/balbri.jpg"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("I love my Bujju"),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    //controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter Bujju's name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // const TextField(
                  //   decoration: InputDecoration(
                  //     labelText: "Name",
                  //     hintText: "Enter Bujju's name",
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
