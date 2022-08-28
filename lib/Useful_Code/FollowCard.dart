import 'package:flutter/material.dart';

class FollowCardWidget extends StatefulWidget {
  @override
  _FollowCard createState() => _FollowCard();
}

class _FollowCard extends State<FollowCardWidget> {
  bool following = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      height: 300.0,
      child: ListView(
        children: <Widget>[
          FollowCard('images/MUSIC.jpeg', 'ComplexMUSIC', 123),
          FollowCard('images/Skepta.jpeg', 'Skepta', 390),
          FollowCard('images/YE.jpeg', 'KanyeWest', 1990),
          FollowCard('images/Not3s.jpeg', 'Not3s', 8),
          FollowCard('images/Krept.jpeg', 'Kreptplaydirty', 3),
        ],
      ),
    );
  }

  Widget FollowCard(profileImage, username, noOfChunes) {
    var following = false;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10, bottom: 20),
      child: Container(
          width: 250,
          height: 350,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              side: BorderSide(
                color: Colors.blue,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('$profileImage'),
                  radius: 35,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '$username',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '$noOfChunes Chunes posted',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.blue,
                      ),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(100))),
                  child: TextButton(
                    child: Text(following ? 'Following' : 'Follow',
                        style: TextStyle(fontSize: 21)),
                    onPressed: () {
                      setState(() {
                        following = !following;
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
