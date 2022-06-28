import 'package:flutter/material.dart';

enum PopupMenuInsta {
  seguindo,
  favoritos,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height: 1,
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                value: PopupMenuInsta.seguindo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Seguindo'),
                    Icon(
                      color: Colors.black,
                      Icons.how_to_reg,
                    ),
                  ],
                ),
              ),
              PopupMenuItem<PopupMenuInsta>(
                height: 1,
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                value: PopupMenuInsta.favoritos,
                child: Row(
                  children: const [
                    Text('Favoritos'),
                    Expanded(
                      child: Icon(
                        color: Colors.black,
                        Icons.star_border,
                      ),
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
                    fontSize: 30,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
