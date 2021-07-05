import 'package:flutter/material.dart';

class FollowCard extends StatelessWidget{
  FollowCard(this.card, this.isFollowing);
  final Follow card;
  final VoidCallback isFollowing;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 12, right: 8),
      child: Container(
          width: 250,
          height: 300,
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
                  backgroundImage: AssetImage(card.profilePic),
                  radius: 35,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  card.userName,
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
                  card.chuneCount,
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
                      child: Text(card.isFollowing ? 'Following' : 'Follow',
                          style: TextStyle(fontSize: 21)),
                      onPressed: () {
                        isFollowing();
                      }),
                )
              ],
            ),
          )),
    );
  }
}

class Follow {
  Follow({
    this.profilePic,
    this.userName,
    this.chuneCount,
    this.isFollowing,
  });
  String profilePic;
  String userName;
  var chuneCount;
  bool isFollowing;
}
