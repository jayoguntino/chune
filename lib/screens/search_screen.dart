import 'package:flutter/material.dart';
import 'package:newapp/screens/Player.dart';
import 'globalvariables.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: const Text('Search coming soon'),
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
}
