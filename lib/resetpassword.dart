import 'changepassucces.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class resetpassword extends StatefulWidget {
  @override
  _resetpasswordState createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  final _formKey = GlobalKey<FormState>();
  bool passenable = true;

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
                      'Reset Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    TextFormField(
                      obscureText: passenable,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Masukkan Password Lama",
                          labelText: "Password Lama",
                          icon: Icon(Icons.lock),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passenable) {
                                  passenable = false;
                                } else {
                                  passenable = true;
                                }
                              });
                            },
                            icon: Icon(passenable == true ? Icons.remove_red_eye : Icons.password),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Harap diisi';
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
                    TextFormField(
                      obscureText: passenable,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Masukkan Password Baru",
                          labelText: "Password Baru",
                          icon: Icon(Icons.lock),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passenable) {
                                  passenable = false;
                                } else {
                                  passenable = true;
                                }
                              });
                            },
                            icon: Icon(passenable == true ? Icons.remove_red_eye : Icons.password),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Harap diisi';
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
                          'Change Password',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return changepassucces();
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
