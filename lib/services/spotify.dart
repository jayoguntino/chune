// //import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:newapp/screens/NavScreen.dart';
// import 'package:newapp/screens/LoginScreens/Login.dart';
// import 'package:spotify_sdk/spotify_sdk.dart';

// Future getAuthenticationToken() async {
//   print(dotenv.env['CLIENT_ID']);
//   try {
//     //connectToSpotifyRemote();
//     var authenticationToken = await SpotifySdk.getAuthenticationToken(
      
//         clientId: dotenv.env['CLIENT_ID'].toString(),
//         redirectUrl: dotenv.env['REDIRECT_URL'].toString(),
//         scope: 'app-remote-control, '
//             'user-modify-playback-state, '
//             'playlist-read-private, '
//             'playlist-modify-public,user-read-currently-playing');
//     print('Got a token: $authenticationToken');
//     print(authenticationToken);
//     //return authenticationToken;

//   } on PlatformException catch (e) {
//     // print(e.code, message: e.message);
//     print(e);
//     return Login();
//   } on MissingPluginException {
//     print('not implemented');
//     return Login();
//   }
//   return NavScreen();
// }
