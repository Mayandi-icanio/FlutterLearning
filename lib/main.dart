import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Mayandi2002'),
                accountEmail: Text('Mayndi2002@icanio.com'),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                otherAccountsPictures: [
                  CircleAvatar(child: Icon(Icons.person_add))
                ],
                decoration: BoxDecoration(color: Colors.lightBlue),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Draft'),
                leading: Icon(Icons.drafts),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Sent'),
                leading: Icon(
                  Icons.send,
                  color: Colors.red,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    print('Sign in');
                  },
                  child: const Text('Sign In'),
                )
              ],
            )));
  }
}
