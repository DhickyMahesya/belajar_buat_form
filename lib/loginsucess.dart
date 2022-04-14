import 'main.dart';
import 'package:flutter/material.dart';

class loginsucess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Center(
              child: Text(
                'Login Berhasil',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
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
