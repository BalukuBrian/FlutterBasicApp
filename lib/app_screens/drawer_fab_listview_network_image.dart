import 'package:flutter/material.dart';

class GmailClone extends StatefulWidget {
  static const String routeName = "/GmailClone";
  const GmailClone({
    Key? key,
  }) : super(key: key);

  @override
  State<GmailClone> createState() => _GmailCloneState();
}

class _GmailCloneState extends State<GmailClone> {
  //for the bottom Navigation
  int _selectedIndex = 0;
  var myText = "What is my Bujju's Name";
  final myController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bujju App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: createTextFieldsWithColumn(),
                ),
              ),
            ),
          ),
        ),
      ),

      //bottom Navigation Bar
      bottomNavigationBar: _homeBottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: createFAB(context),

      drawer: _buildDrawer(),

      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  BottomNavigationBar _homeBottomNavigation() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_rounded),
          label: 'Chat',
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[200],
      onTap: _onItemTapped,
    );
  }

  Column createTextFieldsWithColumn() {
    return Column(
      children: <Widget>[
        Image.asset(
          "assets/balbri.jpg",
          //fit: BoxFit.cover,
          height: 150,
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "What is my Bujju's name?",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          //controller: _nameController,
          controller: myController,
          decoration: const InputDecoration(
            labelText: "Name",
            hintText: "Enter my Bujju's name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          //controller: _nameController,
          decoration: InputDecoration(
            labelText: "Course",
            hintText: "Enter  Bujju's Course",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: "Age",
            hintText: "Enter my  Bujju's Age",
            border: OutlineInputBorder(),
          ),
        ),
        Center(
          child: createSentenceWithRIchText(),
        ),
      ],
    );
  }

  RichText createSentenceWithRIchText() {
    return RichText(
      text: const TextSpan(
        text: 'Development',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.pink,
          decoration: TextDecoration.underline,
          decorationColor: Colors.deepPurpleAccent,
          decorationStyle: TextDecorationStyle.dotted,
          // fontStyle: FontStyle.italic,
          fontWeight: FontWeight.normal,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' for',
          ),
          TextSpan(
            text: ' Mobile',
            style: TextStyle(
                color: Colors.deepOrange,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  FloatingActionButton createFAB(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        myText = myController.text;
        setState(() {});
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(myController.text),
            );
          },
        );
      },
      tooltip: 'Show me the name value!',
      //child: Icon(Icons.text_fields),
      elevation: 10,
      child: const Icon(Icons.send),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Baluku Brian"),
            accountEmail: Text("balbri0@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/balbri.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/baluku.jpg"),
              ),
            ],
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const Text("Baluku Brian"),
            subtitle: const Text("Developer"),
            trailing: const Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.calculate),
            title: const Text("Calculate"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.build),
            title: const Text("About The App"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.help),
            title: const Text("FAQs"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.app_settings_alt),
            title: const Text("Settings"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.devices_other),
            title: const Text("Our other Apps"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.share),
            title: const Text("Share"),
          ),
        ],
      ),
    );
  }
}
