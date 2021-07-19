import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {
                print('Clicked suggestion');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              children: [
                SuggestionCard(
                  name: "Kannan",
                  avatar: ava4,
                  mutualFriends: "6 Mutual Friends",
                  addFriend: () {
                    print("Add Friend");
                  },
                  removeFriend: () {
                    print("Remove Friend");
                  },
                ),
                
                SuggestionCard(
                  name: "David",
                  avatar: ava2,
                  mutualFriends: "1 Mutual Friends",
                  addFriend: () {
                    print("Add Friend");
                  },
                  removeFriend: () {
                    print("Remove Friend");
                  },
                ),
                SuggestionCard(
                  name: "Sharafudhin",
                  avatar: ava3,
                  mutualFriends: "10 Mutual Friends",
                  addFriend: () {
                    print("Add Friend");
                  },
                  removeFriend: () {
                    print("Remove Friend");
                  },
                ),
              ],
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
