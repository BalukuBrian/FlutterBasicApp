import 'package:flutter/material.dart';

class ColumnsAndRowTutorial extends StatelessWidget {
  const ColumnsAndRowTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MoreWidgetsTutorial"),
      ),
      body: Row(
        // NOTE: row widget can be Wrapped in another
        //widget such as center Container
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          const Text("Row here"),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 10,
                style: BorderStyle.solid,
              ),
            ),
            child: const Text("container 1 here"),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 10,
                style: BorderStyle.solid,
              ),
            ),
            child: const Text("container 2 here"),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 10,
                style: BorderStyle.solid,
              ),
            ),
            child: const Text("container 3 here"),
          ),
        ],
      ),
    );
  }
}
