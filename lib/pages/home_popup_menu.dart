import 'package:flutter/material.dart';

enum Options { search, upload, copy, exit }

class HomePopupMenu extends StatefulWidget {
  static const String routeName = "/HomePopupMenu";
  const HomePopupMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePopupMenu> createState() => _HomePopupMenuState();
}

class _HomePopupMenuState extends State<HomePopupMenu> {
  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.white;
  var appBarHeight = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Balbri Popup Menu"),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_horiz),
            enabled: true,
            onSelected: (value) {
              _onMenuItemSelected(value as int);
            },
            offset: Offset(0.0, appBarHeight),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            itemBuilder: (ctx) => [
              _buildPopupMenuItem('Search', Icons.search, Options.search.index),
              _buildPopupMenuItem('Upload', Icons.upload, Options.upload.index),
              _buildPopupMenuItem('Copy', Icons.copy, Options.copy.index),
              _buildPopupMenuItem(
                  'Exit', Icons.exit_to_app, Options.exit.index),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  //color: _changeColorAccordingToMenuItem,
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text("Yes"),
                        //color: Colors.green,
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const Text("No"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.map),
                        color: Colors.pink,
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const Text("Maybe"),
                        //color: Colors.green,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const ImagesAndIconWidget(),
                const Divider(),
                const BoxDecoratorWidget(),
                const Divider(),
                const InputDecoratorsWidget(),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData, int position) {
    return PopupMenuItem(
      value: position,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          Text(title),
        ],
      ),
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });

    if (value == Options.search.index) {
      _changeColorAccordingToMenuItem = Colors.red;
    } else if (value == Options.upload.index) {
      _changeColorAccordingToMenuItem = Colors.green;
    } else if (value == Options.copy.index) {
      _changeColorAccordingToMenuItem = Colors.blue;
    } else {
      _changeColorAccordingToMenuItem = Colors.purple;
    }
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            )
          ],
        ),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 16.0,
          ),
          decoration: const InputDecoration(
            labelText: "Notes",
            labelStyle: TextStyle(color: Colors.purple),
//border: UnderlineInputBorder(),
            /* enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
 */
            border: OutlineInputBorder(),
          ),
        ),
        const Divider(
          color: Colors.lightGreen,
          height: 50.0,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Enter your notes'),
        ),
      ],
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Image(
            image: const AssetImage("assets/balbri.jpg"),
            //color: Colors.orange,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width / 3,
          ),
        ),
        Expanded(
          child: Image.network(
            'https://logowik.com/content/uploads/images/flutter5786.jpg',
            width: MediaQuery.of(context).size.width / 3,
          ),
        ),
        const Expanded(
          child: Icon(
            Icons.brush,
            color: Colors.lightBlue,
            size: 68.0,
          ),
        ),
      ],
    );
  }
}
