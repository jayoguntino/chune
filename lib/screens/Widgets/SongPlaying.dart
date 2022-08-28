import 'package:flutter/material.dart';
import 'package:newapp/screens/Profile.dart';
import 'package:newapp/screens/globalvariables.dart';

class SongPlaying extends StatelessWidget {
 SongPlaying(this.post, this.isLiked, this.isSelected);
  final post;
  final VoidCallback isLiked;
  final VoidCallback isSelected;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                }),
            Center(
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(post.profilePic),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${homePosts.map((post) => post.userName).elementAt(selectedPost)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
            SizedBox(width: 80)
          ],
        ),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                '${homePosts.map((post) => post.albumArt).elementAt(selectedPost)}',
                height: 370,
                width: 370,
              ),
            ),
          ),
        
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('0:00'),
              Flexible(
                flex: 2,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: Colors.blue.withOpacity(0.3),
                    thumbColor: Colors.blue,
                    overlayColor: Colors.blue.withOpacity(0.3),
                    trackHeight: 2,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                  ),
                  child: Slider(
                    value: 12,
                    max: 100,
                    onChanged: (newPosition) {},
                  ),
                ),
              ),
              Text('04:45'),
            ],
          ),
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
                    '${homePosts.map((post) => post.likeCount).elementAt(selectedPost)}',
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
    );
  }
}

class SongPlayingDetails {
  SongPlayingDetails({
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
