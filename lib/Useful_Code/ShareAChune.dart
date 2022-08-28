import 'package:flutter/material.dart';
//import 'Userprofile.dart';

class ShareAChune extends StatefulWidget {
  @override
  _ShareAChune createState() => _ShareAChune();
}

class _ShareAChune extends State<ShareAChune> {
  List resultsList;
  @override
  void initState() {
    super.initState();
    resultsList = <SearchResult>[];

    resultsList.add(
      SearchResult(
          albumArt: 'images/Kendrick.jpg',
          songName: "LOYALTY",
          artistName: 'Kendrick',
          selected: false),
    );
    resultsList.add(
      SearchResult(
          albumArt: 'images/Kendrick.jpg',
          songName: "LOYALTY",
          artistName: 'Kendrick',
          selected: false),
    );
    resultsList.add(
      SearchResult(
          albumArt: 'images/Kendrick.jpg',
          songName: "LOYALTY",
          artistName: 'Kendrick',
          selected: false),
    );
    resultsList.add(
      SearchResult(
          albumArt: 'images/Kendrick.jpg',
          songName: "LOYALTY",
          artistName: 'Kendrick',
          selected: false),
    );
    resultsList.add(
      SearchResult(
          albumArt: 'images/Kendrick.jpg',
          songName: "LOYALTY",
          artistName: 'Kendrick',
          selected: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

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
        actions: [
          GestureDetector(
            child: IconButton(
                icon: CircleAvatar(
                  backgroundImage: AssetImage('images/wizkid.jpeg'),
                  radius: 17,
                ),
                onPressed: () {
                  //  Navigator.push(
                  //context,
                  //MaterialPageRoute(builder: (context) => UserProfile()),
                  //);
                }),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 70,
        title: Center(
          child: Text(
            'chune',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          width: w,
          height: h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      //height: 200,
                      //width: 390,
                      //color: Colors.grey[300],
                      child: Column(
                        //TextField(),
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Column(
                              children: [
                                Text('Share A Chune',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 350,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(100))),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Icon(Icons.search),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Text('Enter song name here...',
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          //Container(height: 1, width: 390, color: Colors.blue)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Layout('images/Kendrick.jpg', 'LOYALTY', 'Kendrick', () {},
                        false, SearchResult()),
                    Layout('images/Kendrick.jpg', 'LOYALTY', 'Kendrick', () {},
                        false, SearchResult()),
                    Layout('images/Kendrick.jpg', 'LOYALTY', 'Kendrick', () {},
                        false, SearchResult()),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class SearchResult {
  SearchResult(
      {this.albumArt,
      this.songName,
      this.artistName,
      this.selected,
      this.onFavoritePressed});
  String albumArt;
  String songName;
  String artistName;
  bool selected;
  final VoidCallback onFavoritePressed;
}

class Layout extends StatelessWidget {
  Layout(this.albumArt, this.songName, this.artistName, this.onFavoritePressed,
      this.selected, this.result);

  String albumArt;
  String songName;
  String artistName;
  bool selected = false;
  final SearchResult result;
  final VoidCallback onFavoritePressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  '$albumArt',
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
                    '$songName',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$artistName',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
              child: Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: Colors.blue,
              ),
              onPressed: () {
                selected = !selected;
              }),
          //Song Name/Artist
        ],
      ),
    );
  }
}
