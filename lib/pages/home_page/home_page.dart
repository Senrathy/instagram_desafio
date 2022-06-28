import 'package:flutter/material.dart';
import 'package:instagram_desafio/models/stories_bubble.dart';

enum PopupMenuInsta {
  seguindo,
  favoritos,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: PopupMenuButton<PopupMenuInsta>(
          padding: const EdgeInsets.all(0),
          position: PopupMenuPosition.under,
          onSelected: (PopupMenuInsta valueSelected) {
            switch (valueSelected) {
              case PopupMenuInsta.seguindo:
                break;
              case PopupMenuInsta.favoritos:
                break;
            }
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuInsta>>[
              PopupMenuItem<PopupMenuInsta>(
                value: PopupMenuInsta.seguindo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        'Seguindo'),
                    Icon(
                      Icons.how_to_reg,
                    ),
                  ],
                ),
              ),
              PopupMenuItem<PopupMenuInsta>(
                value: PopupMenuInsta.favoritos,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        'Favoritos'),
                    Icon(
                      Icons.star_border,
                    ),
                  ],
                ),
              ),
            ];
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: const [
                Text(
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'BlueVinil',
                  ),
                  'Kakogram',
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(size: 30, Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              StoriesBubble(
                imageUrl:
                    'https://media-exp2.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_800_800/0/1601238197714?e=1661990400&v=beta&t=-W3csJ2_PiDPqbJrqjpMFufQq6hkLx9YZwJ1uY41wdY',
                name: 'Sérgio',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
