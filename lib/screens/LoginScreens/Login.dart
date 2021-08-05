import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
//import 'package:newapp/screens/NavScreen.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

class Login extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<Login> {

 var varName = dotenv.env['VAR_NAME'];


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
              onTap: getAuthenticationToken,
              //  onTap: () {

              //    print(varName);


              // // Navigator.push(
              // //     context,
              // // MaterialPageRoute(builder: (context) => NavScreen()),
              // //   );
              // },
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


  Future<String> getAuthenticationToken() async {
  print(dotenv.env['CLIENT_ID']);
    try {
      //connectToSpotifyRemote();
      var authenticationToken = await SpotifySdk.getAuthenticationToken(
          clientId: dotenv.env['CLIENT_ID'].toString(),
          redirectUrl: dotenv.env['REDIRECT_URL'].toString(),
          scope: 'app-remote-control, '
              'user-modify-playback-state, '
              'playlist-read-private, '
              'playlist-modify-public,user-read-currently-playing');
      print('Got a token: $authenticationToken');
      print(authenticationToken);
      return authenticationToken;
    } on PlatformException catch (e) {
      // print(e.code, message: e.message);
      print(e);
      return Future.error('$e.code: $e.message');
    } on MissingPluginException {
      print('not implemented');
      return Future.error('not implemented');
    }
  }



  // void setStatus(String code, {String message}) {
  //   var text = message ?? '';
  //   _logger.i('$code$text');
  // }


}
