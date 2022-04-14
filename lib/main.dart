import 'forgotpass.dart';
import 'loginsucess.dart';
import 'resetpassword.dart';
import 'signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Page Login',
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
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
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Text(
                      'Login',
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
                    TextFormField(
                      obscureText: passenable,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Masukkan Password",
                          labelText: "Password",
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
                          return 'Harap isi Pass anda';
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
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return loginsucess();
                            }));
                          }
                        }),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    FlatButton(
                      child: Text(
                        'Lupa password?',
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return forgotpass();
                        }));
                      },
                    ),
                    FlatButton(
                      child: Text(
                        'Reset password?',
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return resetpassword();
                        }));
                      },
                    ),
                    Text(
                      'Belum memiliki account silahkan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return signup();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
