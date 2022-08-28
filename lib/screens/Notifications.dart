import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
import 'package:newapp/screens/globalvariables.dart';
import 'UserScreens/Userprofile.dart';

class Notifications extends StatefulWidget {
  @override
  _Notifications createState() => _Notifications();
}

class _Notifications extends State<Notifications> {
  List notifications;


  void initState() {
    super.initState();
    notifications = <Notification>[];

    notifications.add(
      Notification(
        profilePic: 'images/Not3s.jpeg',
        userName: 'username',
        albumArt: 'images/PND.jpg',
      ),
    );

    notifications.add(
      Notification(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'username',
        albumArt: 'images/PND.jpg',
      ),
    );

    notifications.add(
      Notification(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'username',
        albumArt: 'images/PND.jpg',
      ),
    );
  }

  isliked() {
    ///coming soon
  }
  isFollowed() {
    ///coming soon
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return NotificationPost(
                    notifications[index],
                  );
                },
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Visibility(
            visible: audioPlaying ? true : false,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlayerScreen()));
              },
              child: AnimatedContainer(
                color: Colors.white,
                duration: Duration(seconds: 1),
                child: SizedBox(
                  height: 70,
                  width: 430,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 1,
                        child: SliderTheme(
                          child: Slider(
                            value: 12,
                            max: 100,
                            onChanged: null,
                          ),
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.blue,
                            inactiveTrackColor: Colors.white.withOpacity(0.3),
                            trackShape: SpotifyMiniPlayerTrackShape(),
                            trackHeight: 2,
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 0,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      '${homePosts.map((post) => post.albumArt).elementAt(selectedPost)}',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${homePosts.map((post) => post.songName).elementAt(selectedPost)}',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '${homePosts.map((post) => post.artistName).elementAt(selectedPost)}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.pause, color: Colors.grey),
                          )
                        ],
                      ),
                      Container(width: 430, height: 1, color: Colors.black12)
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class Notification {
  Notification({
    this.profilePic,
    this.userName,
    this.albumArt,
  });

  String profilePic;
  String userName;
  String albumArt;
}

class NotificationPost extends StatelessWidget {
  NotificationPost(this.post);
  final Notification post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(post.profilePic),
                                    radius: 17,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                '${post.userName} liked your chune',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              post.albumArt,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 390,
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_outlined,
                              color: Colors.blue),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(post.profilePic),
                                    radius: 17,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                '${post.userName} followed you',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 390,
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.library_music, color: Colors.blue),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(post.profilePic),
                                    radius: 17,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                '${post.userName} listened to your chune',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 390,
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ],
    );
  }
}

class SpotifyMiniPlayerTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
