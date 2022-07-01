import 'package:flutter/material.dart';
import 'package:instagram_desafio/models/stories_bubble.dart';

class Feed extends StatelessWidget {
  const Feed({required imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const StoriesBubble(
          isFeed: true,
          imageUrl:
              'https://media-exp2.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_800_800/0/1601238197714?e=1661990400&v=beta&t=-W3csJ2_PiDPqbJrqjpMFufQq6hkLx9YZwJ1uY41wdY',
          name: 'Sérgio',
        ),
      ),
    );
  }
}
