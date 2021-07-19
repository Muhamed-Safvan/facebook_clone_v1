import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostsCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String postTime;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostsCard({
    required this.avatar,
    required this.name,
    required this.postTime,
    this.postTitle = "",
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {
                print("Liked");
              },
              buttonColor: Color(0xFFBDBDBD),
            ),
            buttonTwo: headerButton(
              buttonText: "Comment",
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print("Commented");
              },
              buttonColor: Color(0xFFBDBDBD),
            ),
            buttonThree: headerButton(
              buttonText: "Share",
              buttonIcon: Icons.share_outlined,
              buttonAction: () {
                print("Shared");
              },
              buttonColor: Color(0xFFBDBDBD),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Shares"),
                SizedBox(width: 5),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Drop Down");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String? label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[750]),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postTime),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("More");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
