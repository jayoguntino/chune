///import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
import 'package:newapp/screens/UserScreens/UserProfile.dart';
import 'package:newapp/screens/ViewAllAccounts.dart';
import 'package:newapp/screens/Widgets/FollowCard.dart';
import 'package:newapp/screens/Widgets/Post.dart';
import 'package:newapp/screens/globalvariables.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    whoToFollowList = [];
    homePosts = [];

    whoToFollowList.add(
      Follow(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        chuneCount: '123 Chunes Shared',
        isFollowing: false,
      ),
    );
    whoToFollowList.add(
      Follow(
        profilePic: 'images/Skepta.jpeg',
        userName: 'Skepta',
        chuneCount: '891 Chunes Shared',
        isFollowing: false,
      ),
    );
    whoToFollowList.add(
      Follow(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        chuneCount: '123 Chunes Shared',
        isFollowing: false,
      ),
    );
    whoToFollowList.add(
      Follow(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        chuneCount: '123 Chunes Shared',
        isFollowing: false,
      ),
    );
    whoToFollowList.add(
      Follow(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        chuneCount: '123 Chunes Shared',
        isFollowing: false,
      ),
    );
    homePosts.add(
      PostDetails(
        profilePic: 'images/Poet.jpeg',
        userName: 'poetscorneruk',
        albumArt: 'images/SMH.jpeg',
        songName: 'Cherry B',
        artistName: 'Jordy',
        likeCount: 51,
        isLiked: false,
      ),
    );
    homePosts.add(
      PostDetails(
        profilePic: 'images/Skepta.jpeg',
        userName: 'Skepta',
        albumArt: 'images/IIB.jpg',
        songName: 'Greaze Mode',
        artistName: 'Skepta, Nafe Smallz',
        likeCount: 1011,
        isLiked: false,
      ),
    );

    homePosts.add(
      PostDetails(
        profilePic: 'images/chuckie.jpeg',
        userName: 'ChuckieOnline',
        albumArt: 'images/halfcast.jpeg',
        songName: 'Cultural Clubhouse',
        artistName: 'Halfcast Podcast',
        likeCount: 109,
        isLiked: false,
      ),
    );

    homePosts.add(
      PostDetails(
        profilePic: 'images/lena.jpeg',
        userName: 'lena_ismx',
        albumArt: 'images/JCole.jpeg',
        songName: 'i n t e r l u d e',
        artistName: 'J Cole',
        likeCount: 109,
        isLiked: false,
      ),
    );

    homePosts.add(
      PostDetails(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        albumArt: 'images/Ice.jpeg',
        songName: 'Ice Water',
        artistName: 'Loyle Carner',
        likeCount: 79,
        isLiked: false,
      ),
    );
    homePosts.add(
      PostDetails(
        profilePic: 'images/chune.jpeg',
        userName: 'chuneapp',
        albumArt: 'images/PND.jpg',
        songName: 'Break From Toronto',
        artistName: 'PARTYNEXTDOOR',
        likeCount: 35,
        isLiked: false,
      ),
    );
    homePosts.add(
      PostDetails(
        profilePic: 'images/chune.jpeg',
        userName: 'chuneapp',
        albumArt: 'images/MIL.jpeg',
        songName: 'One Dance',
        artistName: 'Wizkid',
        likeCount: 2,
        isLiked: false,
      ),
    );
  }

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
        backgroundColor: Colors.green,
        elevation: 1,
        toolbarHeight: 70,
        title: Center(
          child: Text(
            'chune',
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllAccounts(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: whoToFollowList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        FollowCard(
                          whoToFollowList[index],
                          () => isFollowing(index),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: homePosts.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Post(
                          homePosts[index],
                          () => isLiked(index),
                          () => isSelected(index),
                        ),
                      ],
                    );
                  },
                ),
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
                                    child: Image.asset(
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

  isFollowing(int index) {
    final card = whoToFollowList[index];
    setState(() {
      card.isFollowing = !card.isFollowing;
    });
  }

  isLiked(int index) {
    final post = homePosts[index];
    setState(() {
      post.isLiked = !post.isLiked;

      if (post.isLiked) {
        setState(() {
          post.likeCount++;
          post.likeColor = Colors.red;
        });
      } else {
        setState(() {
          post.likeCount--;
          post.likeColor = Colors.grey;
        });
      }
    });
  }

  isSelected(int index) {
    setState(() {
      audioPlaying = true;
      selectedPost = index;
    });
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
