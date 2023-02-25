import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    super.key,
    required this.imageUrl, //when feed widget is called
  });

  final String imageUrl;

  @override
  State<Feed> createState() => _FeedState();
}

//_Class are not able to reach outside of this file
class _FeedState extends State<Feed> {
  //like state
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        Image.network(
          widget.imageUrl,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: isFavorite ? Colors.pink : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),

        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
