import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSections.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySections.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/circularButtons.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postsCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonAction: () {
                print("Search Button");
              },
              buttonIcon: Icons.search,
              iconColor: Colors.black,
            ),
            CircularButton(
              buttonAction: () {
                print("Message button");
              },
              buttonIcon: Icons.message,
              iconColor: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Live");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Photo");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Room");
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostsCard(
              name: "Ashik",
              avatar: ava2,
              postTime: '7h',
              postImage: post5,
              postTitle: 'Happy Onam',
              showBlueTick: true,
              likeCount: "10K",
              commentCount: "5K",
              shareCount: "700",
            ),
            thickDivider,
            PostsCard(
              name: "Shankaran",
              avatar: ava5,
              postTime: '4h',
              postImage: post3,
              showBlueTick: true,
              likeCount: "20K",
              commentCount: "7K",
              shareCount: "2K",
            ),
            thickDivider,
            PostsCard(
              name: "Sudhin",
              avatar: ava4,
              postTime: '1 day ago',
              postImage: post1,
              postTitle:
                  "These are my new friends.I'm happy to introduce them to everyone... If anyone wish to buy them.. Contact me",
              showBlueTick: true,
              likeCount: "5K",
              commentCount: "2K",
              shareCount: "1K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostsCard(
              name: "Vaisakh T",
              avatar: ava6,
              postTime: '10hr',
              postImage: post2,
              showBlueTick: true,
              likeCount: "20K",
              commentCount: "10K",
              shareCount: "5K",
            ),
            thickDivider,
            PostsCard(
              name: "Malik",
              avatar: ava3,
              postTime: '10hr',
              postImage: post4,
              likeCount: "20K",
              commentCount: "10K",
              shareCount: "5K",
            ),
          ],
        ),
      ),
    );
  }
}
