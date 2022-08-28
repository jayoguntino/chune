import 'package:newapp/screens/Widgets/FollowCard.dart';
import 'package:newapp/screens/Widgets/Post.dart';

bool audioPlaying = false;
bool homePage = false;
int selectedPost = 0;
int selectedIndex = 0;
int likeCount = homePosts.map((post) => post.likeCount).elementAt(selectedPost);
int whotoFollowlistlength = whoToFollowList.length;
int homePostListlength = homePosts.length;
//int chuneListLength = chuneList.length;

List homePosts;
List<Follow> whoToFollowList;

@override
void initState() {
  ///super.initState();
  whoToFollowList = [];
  homePosts = [];
  //chuneList = [];

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
