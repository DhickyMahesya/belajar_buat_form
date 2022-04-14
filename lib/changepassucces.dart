import 'package:flutter/material.dart';

import 'main.dart';

class changepassucces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [

            Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(40)),
                  Text(
                    'Password Berhasil Diganti',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Text(
                    'Silahkan Login terlebih dahulu dengan password baru',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),
                  ),
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
                )
            ),



          ],
        ),
      ),
    );
  }
}
