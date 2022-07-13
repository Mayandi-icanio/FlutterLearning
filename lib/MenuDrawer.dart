import 'package:first/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MenuDrawer());
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Center(
            child: UserAccountsDrawerHeader(
              accountName: const Text('Mayandi2002'),
              accountEmail: const Text('Mayandi2002@icanio.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_add,
                    color: Colors.blue,
                  ),
                )
              ],
              decoration: const BoxDecoration(color: Colors.lightBlue),
              onDetailsPressed: () {
                print('detail pressed');
              },
            ),
          ),
          ListTile(
            selectedColor: Colors.purple,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            title: const Text('Home'),
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            title: const Text('Inbox'),
            onTap: () {},
            leading: const Icon(
              Icons.inbox,
              color: Colors.blue,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            title: const Text('Draft'),
            onTap: () {},
            leading: const Icon(
              Icons.drafts,
              color: Colors.blue,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(
            title: const Text('Sent'),
            onTap: () {},
            leading: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
