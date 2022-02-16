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
      body: Container(
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
            // textColor: Colors.white,
            // color: Colors.green,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.map),
            onPressed: () {},
          ),
        ],
      )),
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
