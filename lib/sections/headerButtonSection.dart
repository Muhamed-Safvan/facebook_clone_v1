import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });



  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          // // headerButton(
          //     buttonText: "Live",
          //     buttonIcon: Icons.video_call,
          //     buttonAction: () {
          //       print("Live");
          //     },
          //     buttonColor: Colors.red),
          verticalDivider,
          buttonTwo,
          // headerButton(
          //     buttonText: "Photo",
          //     buttonIcon: Icons.photo_library,
          //     buttonAction: () {
          //       print("Photo");
          //     },
          //     buttonColor: Colors.green),
          verticalDivider,
          buttonThree,
          // // headerButton(
          //     buttonText: "Room",
          //     buttonIcon: Icons.video_call,
          //     buttonAction: () {
          //       print("Room");
          //     },
          //     buttonColor: Colors.purple),
        ],
      ),
    );
  }
}
