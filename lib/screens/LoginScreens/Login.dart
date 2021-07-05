import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 250,
              width: 200,
            ),
            Text(
              'project',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 52.0,
                  color: Colors.white),
            ),
            SizedBox(height: 30),
            Text('Select your provider',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                )),
            SizedBox(height: 10),
            Stack(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 100,
                  child: GestureDetector(
                    child: Card(
                      elevation: 0,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 160,
                  child: Image.asset(
                    'images/spotify.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 100,
                  child: GestureDetector(
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 160,
                  child: Image.asset(
                    'images/Apple.jpg',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
