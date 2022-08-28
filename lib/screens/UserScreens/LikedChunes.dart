import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
import 'package:newapp/screens/ShareAChune.dart';
import 'package:newapp/screens/globalvariables.dart';
import 'package:newapp/screens/UserScreens/LikedChunes.dart';

class LikedChunes extends StatefulWidget {
  @override
  _LikedChunes createState() => _LikedChunes();
}

class _LikedChunes extends State<LikedChunes> {
  var likeColor = Colors.red;
  int selectedCounter = 0;

  List chuneList;
  @override
  void initState() {
    super.initState();
    chuneList = <Chune>[];

    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isSelected: false,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
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
      body: Stack(
        children: [



          SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Liked Chunes',
                  style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chuneList.length,
                  itemBuilder: (context, index) {
                    return ChuneRow(
                      chuneList[index],
                      () => isSelected(index),
                    );
                  },
                ),
              ),
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
        ]



        
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedCounter >= 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShareAChune()),
              );
            }
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue),
    );
  }

  isSelected(int index) {
    final chune = chuneList[index];

    setState(
      () {
        chune.isSelected = !chune.isSelected;
      },
    );
  }
}

class ChuneRow extends StatelessWidget {
  ChuneRow(this.chune, this.isSelected);
  final Chune chune;
  final VoidCallback isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: isSelected,
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
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    isSelected();
                  },
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    chune.isSelected
                        ? Icons.favorite_border_outlined
                        : Icons.favorite,
                    color: chune.isSelected
                        ? Colors.grey.withOpacity(0.7)
                        : Colors.red,
                  ),
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
  Chune({this.albumArt, this.songName, this.artistName, this.isSelected});
  var albumArt;
  var songName;
  var artistName;
  bool isSelected;
}
