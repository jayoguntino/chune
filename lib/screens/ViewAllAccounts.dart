import 'package:flutter/material.dart';
import 'package:newapp/screens/Profile.dart';
import 'package:newapp/screens/Widgets/FollowCard.dart';
import 'package:newapp/screens/globalvariables.dart';
import 'UserScreens/Userprofile.dart';

class ViewAllAccounts extends StatefulWidget {
  @override
  _ViewAllAccounts createState() => _ViewAllAccounts();
}

class _ViewAllAccounts extends State<ViewAllAccounts> {
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
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  }),
            ),
          )
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
      body: SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(height: 20),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: whoToFollowList.length,
              itemBuilder: (context, index) {
                return FollowCard(
                  whoToFollowList[index],
                  () => isFollowing(index),
                );
              },
            ),
          ],
        ),
      )
    );
  }

  isFollowing(int index) {
    final card = whoToFollowList[index];
    setState(() {
      card.isFollowing = !card.isFollowing;
    });
  }
}
