import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String picuture;

  final String title;
  ProfilePic({Key? key, required this.picuture, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.0, 0.7),
      children: [
        Container(
          width: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black12,
                spreadRadius: 2,
              )
            ],
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              picuture,
            ),
            radius: 100,
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black45),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
