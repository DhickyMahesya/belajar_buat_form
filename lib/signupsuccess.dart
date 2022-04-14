import 'package:flutter/material.dart';

import 'main.dart';

class signupsuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Padding(padding: EdgeInsets.only(top: 20)),

            Center(
              child: Text(
                'Account berhasil Dibuat',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Center(
              child: Text(
                'Silahkan Lihat email anda untuk veritifikasi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Login();
                          }
                          )
                      );
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
