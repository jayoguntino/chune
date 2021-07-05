import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post(this.post, this.isLiked, this.isSelected);
  final PostDetails post;
  final VoidCallback isLiked;
  final VoidCallback isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(post.profilePic),
                radius: 17,
              ),
              SizedBox(
                width: 10,
              ), //Profile Image
              Text(
                post.userName,
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
          GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                post.albumArt,
                height: 370,
                width: 370,
              ),
            ),
            onDoubleTap: isLiked,
            onTap: isSelected,
          ), //Album art
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  post.songName,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ), //Song Name/Artist

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${post.likeCount}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    IconButton(
                      icon: Icon(
                          post.isLiked ? Icons.favorite : Icons.favorite_border,
                          color: post.likeColor),
                      onPressed: () {
                        isLiked();
                      },
                      padding: EdgeInsets.all(0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                post.artistName,
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

class PostDetails {
  PostDetails({
    this.profilePic,
    this.userName,
    this.albumArt,
    this.songName,
    this.artistName,
    this.likeCount,
    this.isLiked,
    this.isSelected,
    this.likeColor,
  });
  String profilePic;
  String userName;
  String albumArt;
  String songName;
  String artistName;
  int likeCount;
  bool isLiked;
  bool isSelected;
  var likeColor = Colors.grey;
}
