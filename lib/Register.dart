import 'package:first/Login.dart';
import 'package:first/MenuDrawer.dart';
import 'package:first/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(home: register()));
}

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  void _navigateTohome() async {
    if (_validate == true) {
      showAlertDialog(context);
    } else {
      Fluttertoast.showToast(
          msg: 'Registered Succesfully',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.black,
          textColor: Colors.white);

      await Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => login()));
    }
  }

  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();

  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white10,
      drawer: const MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Icanio.png'), fit: BoxFit.cover)),
          ),
          Center(
            child: Card(
              color: Colors.white,
              elevation: 30,
              borderOnForeground: true,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 470,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(14.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/Icanio.png',
                        height: 70,
                        width: 200,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 20, 25, 15),
                        child: TextField(
                          controller: txt1,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            errorText:
                                _validate ? '* Email is Mandatory' : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            hintText: 'Enter Your Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 15),
                        child: TextField(
                          controller: txt2,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            errorText:
                                _validate ? '* Username is Mandatory' : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            hintText: 'Enter New Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: TextField(
                          obscureText: true,
                          controller: txt3,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              errorText:
                                  _validate ? '* Password is Mandatory' : null,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              hintText: 'Enter New Password'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 230,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: const BorderSide(
                                          color: Colors.blue)))),
                          onPressed: () {
                            setState(() {
                              txt1.text.isEmpty ||
                                      txt2.text.isEmpty ||
                                      txt3.text.isEmpty
                                  ? _validate = true
                                  : _validate = false;
                            });
                            _navigateTohome();
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        child: Text(
                          'Back to Login',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => login()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget cancelButton = ElevatedButton(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        });

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert!!!"),
      content: Text("Please fill the Fields"),
      actions: [
        okButton,
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
