import 'resetpassword.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class linkreset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Silahkan Cek Email Anda',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'password sudah di kirim melalui email anda dan silahkan cek email anda',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  FlatButton(
                    child: Text(
                      'Ganti password ?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return resetpassword();
                      }));
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  FlatButton(
                    child: Text(
                      'Kembali Ke Login',
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
