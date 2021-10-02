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
  var myText = "What is my Bujju's Name";
  final myController = TextEditingController();

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
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Baluku Brian"),
              accountEmail: Text("balbri0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/balbri.jpg"),
              ),
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
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
