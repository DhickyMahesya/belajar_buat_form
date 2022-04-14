import 'linkreset.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class forgotpass extends StatefulWidget {
  @override
  _forgotpassState createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      'Forgot Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintText: 'Masukkan Email Anda',
                          labelText: 'E-mail',
                          icon: Icon(Icons.alternate_email),
                          border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Harap Isi Email Anda';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    RaisedButton(
                        child: Text(
                          'Send Reset Link',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return linkreset();
                            }));
                          }
                        }),
                  ],
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  FlatButton(
                    child: Text(
                      'Back to Login',
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
