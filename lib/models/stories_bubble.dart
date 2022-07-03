import 'package:flutter/material.dart';

class StoriesBubble extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isFeed;
  final BuildContext contexto;
  final bool isToolbar;

  const StoriesBubble({
    required this.imageUrl,
    required this.name,
    required this.isFeed,
    required this.contexto,
    required this.isToolbar,
    Key? key,
  }) : super(key: key);

  Widget isStories(bool isFeed) {
    if (!isFeed) {
      return Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
          ),
          name.length > 10 ? '${name.substring(0, 10)}...' : name);
    } else {
      return const SizedBox(
        width: 0,
        height: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double isAppbar(bool isToolbar) {
      if (isToolbar) {
        return kToolbarHeight - 8;
      } else {
        return 75;
      }
    }

    var mediaQuery = isAppbar(isToolbar);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 6, 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: mediaQuery,
                height: mediaQuery,
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
                width: mediaQuery - 5,
                height: mediaQuery - 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.all(8),
              ),
              Container(
                width: mediaQuery - 7,
                height: mediaQuery - 7,
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
