import 'dart:ffi';

import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [suggestionImage(), suggestionDetails()],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ""),
              subtitle: Text(mutualFriends != null ? mutualFriends : ""),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonIcon: Icons.account_box,
                    buttonColor: Color(0xFF1976D2),
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                    buttonAction: addFriend,
                  ),
                  blankButton(
                      buttonAction: removeFriend,
                      buttonColor: Color(0xFFE0E0E0),
                      buttonTextColor: Colors.black,
                      buttonText: "Remove"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonIconColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
      top: 0,
      right: 0,
      left: 0,
    );
  }
}
