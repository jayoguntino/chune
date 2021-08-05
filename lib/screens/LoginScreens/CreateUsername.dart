import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CreateUsername extends StatefulWidget {
  @override
   _CreateUsername createState() => _CreateUsername();
}

class _CreateUsername extends State<CreateUsername> {
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
            SizedBox(height: 100),
            
          ],
        ),
      ),
    );
  }

  checkUsername() {
// Function will check if the user name
// entered by the user already exists in the userbase
  }
}
