import 'package:flutter/material.dart';

class HomePostWidget extends StatefulWidget {
  @override
  _HomePost createState() => _HomePost();
}

class _HomePost extends State<HomePostWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget HomePost(profileImage, username, albumArt, songName, artistName, url) {
    int counter = 0;
    var liked = false;

    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('$profileImage'),
                radius: 17,
              ),
              SizedBox(
                width: 10,
              ), //Profile Image
              Text(
                '$username',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ), //Username
              SizedBox(
                height: 50,
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              '$albumArt',
              height: 370,
              width: 370,
            ),
          ), //Album art
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$songName',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ), //Song Name/Artist

                Row(
                  children: [
                    Text(
                      '$counter',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    TextButton(
                        child: Icon(Icons.favorite,
                            color: liked ? Colors.red : Colors.grey),
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                          });
                        }),
                  ],
                ),
              ],

              //Liked Icon
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                '$artistName',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ), //Song Name/Artist
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
