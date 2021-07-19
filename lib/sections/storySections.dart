import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: ava7,
            story: ava7,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Ashik",
            avatar: ava6,
            story: post5,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Shankaran",
            avatar: ava5,
            story: ava1,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Malik",
            avatar: ava4,
            story: post3,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sudhin",
            avatar: ava3,
            story: post2,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Vaisakh T",
            avatar: ava2,
            story: post1,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
