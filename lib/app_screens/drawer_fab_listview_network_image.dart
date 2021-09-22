import 'package:flutter/material.dart';

class GmailClone extends StatelessWidget {
  const GmailClone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gmail Clone"),
      ),
      body: const Text("Data here"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        child: const Icon(Icons.edit),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Baluku Brian"),
              accountEmail: Text("balbri0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage("D:\balbri2"), //NetworkImage, FileImage
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
