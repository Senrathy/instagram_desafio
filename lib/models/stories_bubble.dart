import 'package:flutter/material.dart';

class StoriesBubble extends StatelessWidget {
  final String imageUrl;
  final String name;

  const StoriesBubble({
    required this.imageUrl,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            // padding: const EdgeInsets.all(8),
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
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.all(8),
          ),
          Container(
            width: 83,
            height: 83,
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 83,
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
          SizedBox(
            width: 100,
            height: 130,
            child: Align(alignment: Alignment.bottomCenter,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                ),
                name,
              ),
            ),
          )
        ],
      ),
    );
  }
}
