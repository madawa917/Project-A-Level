import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/authentication.dart';

class Login extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  void _showErrorDialog(String msg) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("An Error Occured"),
        content: Text(msg),
        actions: [
          FlatButton(
            child: Text('Okey'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      await Provider.of<Authentication>(context, listen: false).logIn(
        _authData['email'],
        _authData['password'],
      );
      Navigator.pushNamed(context, '/home');
    } catch (e) {
      var errorMessage = "Authentication Failed. Please try agai later.";
      _showErrorDialog(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1a237e),
        title: Text(
          "App Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          FlatButton(
            child: Row(
              children: [
                Text("Signup"),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.person_add,
                  color: Colors.white,
                )
              ],
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, "/signup");
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Center(
            child: Card(
              elevation: 10,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 265,
                width: 309,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      //Email
                      TextFormField(
                        decoration: InputDecoration(labelText: "E-mail"),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'invalid E-mail';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['email'] = value;
                        },
                      ),

                      //Password
                      TextFormField(
                        decoration: InputDecoration(labelText: "Password"),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty || value.length <= 5) {
                            return "Invalid Password Entry";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['password'] = value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        child: Text("Login"),
                        onPressed: () {
                          _submit();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.blue[900],
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
