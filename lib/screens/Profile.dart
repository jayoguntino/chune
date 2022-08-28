//To God be the Glory

import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
import 'package:newapp/screens/UserScreens/EditProfileScreen.dart';
import 'package:newapp/screens/globalvariables.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  ///Variables for the followers count
  int followerCount = 0;
  int followingCount = 0;
  int chuneCount = 0;
  bool following = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 170),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage(
                          'https://www.naijaloaded.com.ng/wp-content/uploads/2021/08/wizkid-made-in-lagos-deluxe-e1630048799618.jpeg'),
                      radius: 35,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '@wizkid',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Text(
                            '$chuneCount',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Chunes',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Text(
                            '$followerCount',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Followers',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Text(
                            '$followingCount',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          style: TextStyle(fontSize: 21, color: Colors.blue)),
                      onPressed: () {
                        setState(() {
                          following = !following;
          
                          if (following == true) {
                            setState(() {
                              followerCount++;
                            });
                          } else {
                            setState(() {
                              followerCount--;
                            });
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 20),
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
                      child: Text('Edit Profile',
                          style: TextStyle(fontSize: 21, color: Colors.blue)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProfile()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              'https://www.naijaloaded.com.ng/wp-content/uploads/2021/08/wizkid-made-in-lagos-deluxe-e1630048799618.jpeg',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'chune.songName',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'chune.artistName',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          'https://www.naijaloaded.com.ng/wp-content/uploads/2021/08/wizkid-made-in-lagos-deluxe-e1630048799618.jpeg',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chune.songName',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'chune.artistName',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          'https://images.8tracks.com/cover/i/012/648/270/Lotto-Boyzz-Afrobbean-500x500-4566.jpg?rect=0,0,500,500&q=98&fm=jpg&fit=max',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chune.songName',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'chune.artistName',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          'https://www.naijaloaded.com.ng/wp-content/uploads/2021/08/wizkid-made-in-lagos-deluxe-e1630048799618.jpeg',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chune.songName',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'chune.artistName',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqUNBViMQ5eRJP5Pn-s7oxRufNRU4gGwCsMA&usqp=CAU',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chune.songName',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'chune.artistName',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Tiwa_Savage_-_Sugarcane_EP_cover.jpg/220px-Tiwa_Savage_-_Sugarcane_EP_cover.jpg',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chune.songName',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'chune.artistName',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
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



        ]
      ),
   
  
    );
  }
}

class Chune {
  Chune({this.albumArt, this.songName, this.artistName});
  var albumArt;
  var songName;
  var artistName;
}
