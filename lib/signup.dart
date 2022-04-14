import 'main.dart';
import 'signupsuccess.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  bool passenable = true;
  bool nilaicheck = false;

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
                      'Sign Up',
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintText: 'Masukkan Nama Anda',
                          labelText: 'Name',
                          icon: Icon(Icons.people),
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
                      keyboardType: TextInputType.emailAddress,
                      obscureText: passenable,
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
                    CheckboxListTile(
                      title: Text("Anda menyetujui Persyaratan yang diberikan"),
                      subtitle: Text("silahkan anda check list jika anda setuju"),
                      value: nilaicheck,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          nilaicheck = value!;
                        });
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
                          'Create Account',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return signupsuccess();
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
