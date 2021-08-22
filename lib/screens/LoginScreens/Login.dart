import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:spotify_sdk/spotify_sdk.dart';
//import 'package:newapp/screens/NavScreen.dart';
// import 'package:spotify_sdk/spotify_sdk.dart';

class Login extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<Login> {
  var clientId = dotenv.env['CLIENT_ID'];
  var clientSecret = dotenv.env['CLIENT_SECRET'];
  var redirectURL = dotenv.env['REDIRECT_URL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 250,
              width: 200,
            ),
            Text(
              'chune',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 80.0,
                  color: Colors.white),
            ),
            SizedBox(height: 30),
            Text('Select your provider',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                )),
            SizedBox(height: 10),
            GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                      width: 350,
                      height: 100,
                      child: Card(
                        elevation: 0,
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      )),
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
              onTap: () {
                getAuthToken();
                // print('the auth token is: $authToken');
                // print(getAuthToken);
              },
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
                    onTap: () async {
                      String authToken = await getAuthToken();

                      print((' the auth token is $authToken'));
                    },
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

  printTheString() {}

  Future<String> getAuthToken() async {
    print(dotenv.env['CLIENT_ID']);
    print(dotenv.env['CLIENT_SECRET']);
    try {
      // connectToSpotifyRemote();
      var authenticationToken = await SpotifySdk.getAuthenticationToken(
          clientId: dotenv.env['CLIENT_ID'],
          redirectUrl: dotenv.env['REDIRECT_URL'],
          scope: 'app-remote-control, '
              'user-modify-playback-state, '
              'playlist-read-private, '
              'playlist-modify-public,user-read-currently-playing');

      log('Got a token: $authenticationToken');

      return authenticationToken;
    } on PlatformException catch (e) {
      // print(e.code, message: e.message);
      print(e.code);
      return Future.error('$e.code: $e.message');
    } on MissingPluginException {
      print('not implemented');
      return Future.error('not implemented');
    }
  }
}
