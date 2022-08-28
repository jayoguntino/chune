///import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
//import 'package:newapp/screens/UserScreens/UserProfile.dart';
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

    ///The lists are declared one for the Home posts and one for the user accounts

    whoToFollowList = [];
    homePosts = [];


    whoToFollowList.add(
      Follow(
        profilePic: 'images/chune.jpeg',
        userName: 'chuneapp',
        chuneCount: '1000 chunes shared',
        isFollowing: false,
      ),
    );

    whoToFollowList.add(
      Follow(
        profilePic: 'images/chune.jpeg',
        userName: 'chuneapp',
        chuneCount: '1000 chunes shared',
        //
        isFollowing: false,
      ),
    );

    whoToFollowList.add(
      Follow(
        profilePic: 'images/MUSIC.jpeg',
        userName: 'ComplexMUSIC',
        chuneCount: '123 Chunes Shared',
        //
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
        profilePic:
        'https://static.independent.co.uk/2021/11/11/09/Screenshot%202021-11-11%20at%202.59.20%20PM.png?quality=75&width=990&auto=webp&crop=982:726,smart',
        userName: 'jaden',
        albumArt: 'https://images.genius.com/fadacd1c3ee9294c29861feee8812ffa.1000x1000x1.jpg',
        url: 'https://open.spotify.com/track/1lxs63LaZX1wHBr0qIt5oK?si=1bdea75cf58c4748',
        songName: 'Rainbow Bap',
        artistName: 'Jaden Smith',
        likeCount: 234,
        isLiked: false,
      ),
    );

    homePosts.add(
      PostDetails(
        profilePic:
        'https://static.standard.co.uk/s3fs-public/thumbnails/image/2020/09/11/09/wdl-screen-big-mike-100920-945pm.jpg?width=1200',
        userName: 'stormzy',
        albumArt: 'https://m.media-amazon.com/images/I/71tqDp4Za8L._SS500_.jpg',
        url: 'https://open.spotify.com/track/1lxs63LaZX1wHBr0qIt5oK?si=1bdea75cf58c4748',
        songName: 'SURF',
        artistName: 'Xavier',
        likeCount: 234,
        isLiked: false,
      ),
    );


    homePosts.add(
      PostDetails(
        profilePic:
            'https://static.standard.co.uk/s3fs-public/thumbnails/image/2020/09/11/09/wdl-screen-big-mike-100920-945pm.jpg?width=1200',
        userName: 'stormzy',
        albumArt: 'https://m.media-amazon.com/images/I/71OHttWfTuL._SS500_.jpg',
        url: '' ,
        songName: 'Greaze Mode',
        artistName: 'Skepta, Nafe Smallz',
        likeCount: 1011,
        isLiked: false,
      ),
    );

    //https://pbs.twimg.com/media/EbMPslEXsAQER_U.jpg

    
  }

  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerScreen(),
                  ),
                );
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
                            //trackShape: SpotifyMiniPlayerTrackShape(),
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

