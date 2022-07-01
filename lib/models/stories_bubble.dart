import 'package:flutter/material.dart';

class StoriesBubble extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isFeed;

  const StoriesBubble({
    required this.imageUrl,
    required this.name,
    required this.isFeed,
    Key? key,
  }) : super(key: key);

  Widget isStories(bool isFeed) {
    if (isFeed) {
      return Text(
          style: const TextStyle(
            color: Colors.white,
          ),
          name);
    } else {
      return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 0, 6, 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.yellow,
                      Colors.red,
                      Colors.purple,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.all(8),
              ),
              Container(
                width: 68,
                height: 68,
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  radius: 68,
                  backgroundImage: NetworkImage(imageUrl),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.white38,
                        width: 1.5,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        isStories(isFeed),
      ],
    );
  }
}
