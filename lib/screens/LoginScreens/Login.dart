import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:newapp/screens/NavScreen.dart';



class Login extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<Login> {
  var varName = dotenv.env['VAR_NAME'];

  @override
  Widget build(BuildContext context) {
    var container = Container(
        width: 500,
        height: 1000,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor,
          ]),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'chune',
              style: TextStyle(
                  fontFamily: '',
                  fontSize: 90,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(



              // onTap: getAuth,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavScreen(),
                  ),
                );
              },



              child: Container(
                width: 300,
                height: 100,
                child: Image.asset('images/loginwithspotify.png'),
              ),
            ),
          ],
        ),
      );
    return Scaffold(
      //backgroundColor: Colors.pink,
      body: container,
    );
  }

  // void getAuth() {

  //   getAuthenticationToken().then((screen) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => screen),
  //     );
  //   });

  // }
}
