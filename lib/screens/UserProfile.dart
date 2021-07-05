import 'package:flutter/material.dart';
import 'package:newapp/screens/NavScreen.dart';
//import 'Home.dart';
//import 'Notifications.dart';
import 'Home.dart';
import 'Notifications.dart';
import 'ShareAChune.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  List chuneList;
  var chuneCount = 0;
  int followerCount = 0;
  int followingCount = 0;
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    HomeScreen(),
    Notifications(),
  ];

  @override
  void initState() {
    super.initState();
    chuneList = <Chune>[];

    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
      ),
    );
  }

  var following = false;
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: w,
          height: h,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 120),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              backgroundImage: AssetImage('images/wizkid.jpeg'),
                              radius: 35,
                            ),
                            SizedBox(height: 16),
                            Text('@wizkid',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
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
                                    ),
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
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(100))),
                            child: TextButton(
                              child: Text(following ? 'Following' : 'Follow',
                                  style: TextStyle(fontSize: 21)),
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
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(100))),
                            child: TextButton(
                              child: Text('Edit Profile',
                                  style: TextStyle(fontSize: 21)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                height: h * 0.55,
                child: SingleChildScrollView(
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: chuneList.length,
                      itemBuilder: (context, index) {
                        return ChuneRow(
                          chuneList[index],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ShareAChune()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  isFollowing(int index) {
    final chune = chuneList[index];
    setState(() {
      chune.isSelected = !chune.isSelected;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      index == 0
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavScreen()),
            )
          : Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            );
    });
  }
}

class ChuneRow extends StatelessWidget {
  ChuneRow(this.chune);
  final Chune chune;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    chune.albumArt,
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
                      chune.songName,
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      chune.artistName,
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
