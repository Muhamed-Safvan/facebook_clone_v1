import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget space = SizedBox(
      width: 10,
    );
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: ava7,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava6,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava5,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava4,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava3,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava2,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ava1,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(
          color: Color(0xFFBBDEFB),
          width: 2,
        ),
        onPressed: () {
          print("outlined button");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n Room",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
