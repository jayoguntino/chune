import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'ListView Like - Unlike'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        isFavorite: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isFavorite: false,
      ),
    );
    chuneList.add(
      Chune(
        albumArt: 'images/MIL.jpeg',
        songName: 'Song 1',
        artistName: 'Wizkid, Burna Boy',
        isFavorite: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        itemCount: chuneList.length,
        itemBuilder: (context, index) {
          return ChuneRow(
            chuneList[index],
            () => onFavoritePressed(index),
          );
        },
      ),
    );
  }

  onFavoritePressed(int index) {
    final chune = chuneList[index];
    setState(() {
      chune.isFavorite = !chune.isFavorite;
    });
  }
}

class ChuneRow extends StatelessWidget {
  ChuneRow(this.chune, this.onFavoritePressed);
  final Chune chune;
  final VoidCallback onFavoritePressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onFavoritePressed,
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
                    onFavoritePressed();
                  },
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    chune.isFavorite
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: Colors.blue,
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
  Chune({this.albumArt, this.songName, this.artistName, this.isFavorite});
  var albumArt;
  var songName;
  var artistName;
  var isFavorite;
}
