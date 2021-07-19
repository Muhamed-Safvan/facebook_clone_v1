import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButtons.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonAction: () {
                      print("Circular Button Card");
                    },
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    height: 35,
                    width: 35,
                  ),
          ),
          Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
