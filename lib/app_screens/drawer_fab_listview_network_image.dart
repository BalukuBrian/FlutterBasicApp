import 'package:flutter/material.dart';

class GmailClone extends StatefulWidget {
  const GmailClone({
    Key? key,
  }) : super(key: key);

  @override
  State<GmailClone> createState() => _GmailCloneState();
}

class _GmailCloneState extends State<GmailClone> {
  var myText = "What is my Bujju's Name";
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baluku Brian App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/balbri.jpg"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("what is my name"),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      //controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter my name",
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
                        hintText: "Enter Course",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      //controller: _nameController,
                      // keyboardType: TextInputType(),
                      decoration: InputDecoration(
                        labelText: "Age",
                        hintText: "Enter my Age",
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
          myText = _nameController.text;
          setState(() {});
        },
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
              leading: const Icon(Icons.other_houses),
              title: const Text("Mbarara University"),
              subtitle: const Text("Mbarara Town"),
              trailing: const Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.computer),
              title: const Text("Kelsey"),
              subtitle: const Text("MUST"),
              trailing: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
