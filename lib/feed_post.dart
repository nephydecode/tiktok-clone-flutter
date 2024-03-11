import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  final AssetImage img;

  FeedPost({this.img});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -60,
      width: MediaQuery
          .of(context)
          .size
          .width / 3,
      child: Image(
          image: img,
          fit: BoxFit.fitWidth),
    );;
  }
}
