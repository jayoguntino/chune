import 'package:flutter/material.dart';
import 'package:newapp/screens/NavScreen.dart';
import 'UserScreens/Userprofile.dart';

class ShareAChune extends StatefulWidget {
  @override
  _ShareAChune createState() => _ShareAChune();
}

class _ShareAChune extends State<ShareAChune> {
  var selectedColor = Colors.grey;
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
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
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 25),
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
                      color: Colors.grey[300],
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
                      //color: Colors.grey[50],
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
                            child: SizedBox(
                              width: 350,
                              child: TextField(
                                onSubmitted: (String chune) {},
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Enter artists & songs...',
                                  focusColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 5)

                          //Container(height: 1, width: 390, color: Colors.blue)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                height: h * 0.655,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: h * 3,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedCounter >= 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavScreen()),
              );
            }
          },
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
          backgroundColor: selectedColor),
    );
  }

  isSelected(int index) {
    final chune = chuneList[index];

    setState(
      () {
        chune.isSelected = !chune.isSelected;
        chune.isSelected ? selectedCounter++ : selectedCounter--;
        print(selectedCounter);

        selectedCounter >= 1
            ? selectedColor = Colors.blue
            : selectedColor = Colors.grey;
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
  Chune({this.albumArt, this.songName, this.artistName, this.isSelected});
  var albumArt;
  var songName;
  var artistName;
  bool isSelected;
}
