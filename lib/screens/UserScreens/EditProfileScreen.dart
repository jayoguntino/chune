import 'package:flutter/material.dart';
import 'package:newapp/screens/UserScreens/LikedChunes.dart';
import 'UserProfile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: GestureDetector(
              child: IconButton(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('images/wizkid.jpeg'),
                    radius: 17,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  }),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 70,
        title: Center(
          child: Text(
            'account',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Column(children: [
        InkWell(
          splashColor: Colors.white,
          onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LikedChunes()),
                    );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Liked chunes'),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.white,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Change username'),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.white,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upload profile photo'),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
