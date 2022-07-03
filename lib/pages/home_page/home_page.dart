import 'package:flutter/material.dart';
import 'package:instagram_desafio/models/feed.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.ondemand_video_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.circle_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 8,
        backgroundColor: Colors.black,
        title: PopupMenuButton<PopupMenuInsta>(
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
              const PopupMenuItem(
                padding: EdgeInsets.all(0),
                height: 0.5,
                child: PopupMenuDivider(height: 0.5),
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
            icon: Icon(size: 29, Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(size: 29, Icons.favorite_border_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(size: 29, Icons.chat_outlined),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 101,
                  child: Row(
                    children: [
                      StoriesBubble(
                        isToolbar: false,
                        contexto: context,
                        isFeed: false,
                        imageUrl:
                            'https://media-exp2.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_800_800/0/1601238197714?e=1661990400&v=beta&t=-W3csJ2_PiDPqbJrqjpMFufQq6hkLx9YZwJ1uY41wdY',
                        name: 'kakosergio',
                      ),
                      StoriesBubble(
                        isToolbar: false,
                        contexto: context,
                        isFeed: false,
                        imageUrl:
                            'https://servicosweb.cnpq.br/wspessoa/servletrecuperafoto?tipo=1&id=K4930056P6',
                        name: 'cintya.vieira',
                      ),
                      StoriesBubble(
                        isToolbar: false,
                        contexto: context,
                        isFeed: false,
                        imageUrl:
                            'https://scontent-gru2-1.xx.fbcdn.net/v/t1.18169-9/24131366_106450000141470_4335424228726322510_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHYoUnJaaz7G47fJEroAsz4H9H8LiD9T9cf0fwuIP1P109I5MBHUs3M1Ez_DCO2CiDFyvyYq7XGSGmdVbhCJ_lu&_nc_ohc=BLsg4CKYzVQAX-u4Dx1&_nc_ht=scontent-gru2-1.xx&oh=00_AT_Ff2IR3HBL5sVrjPRjGqDoijstGB0lmeOeepVKBzSDiw&oe=62E1FBD3',
                        name: 'artur.moraes',
                      ),
                      StoriesBubble(
                        isToolbar: false,
                        contexto: context,
                        isFeed: false,
                        imageUrl:
                            'https://scontent-gru2-1.xx.fbcdn.net/v/t1.6435-9/190222035_4264938886891225_203359143865066559_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHOSMrdYa94uXHE_AOgr0xt-9EzMPCOSfL70TMw8I5J8quo-PAVydQDkHFqcxFE3E2Dwis4VItyebCpjydIN1cb&_nc_ohc=YD1iJaboTosAX8p_Tul&_nc_ht=scontent-gru2-1.xx&oh=00_AT_FwJHEHba2RdrcSYJPi3BvG3hN7h-bdTZGXFb0J_vD5w&oe=62E18CA2',
                        name: 'mattzarpellon',
                      ),
                      StoriesBubble(
                        isToolbar: false,
                        contexto: context,
                        isFeed: false,
                        imageUrl:
                            'https://scontent-gru1-2.xx.fbcdn.net/v/t1.6435-9/69618270_2415374131849711_2710809406764744704_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeF8cG5yAUL6yLRb2YwzebJpAjqp7KSYoe8COqnspJih78opxND_fuQkOKionX0mpKrF5ujM2dhrlcZsrmhrUTMd&_nc_ohc=zCmSPrvPYY8AX8444TS&_nc_ht=scontent-gru1-2.xx&oh=00_AT9mI3-DaJis7f0NFszQ0zUk8-91HbPtA9inSmfwInPWeA&oe=62DF9C84',
                        name: 'little_larat',
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: const [
                    Feed(
                        ownerPortrait:
                            'https://media-exp2.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_800_800/0/1601238197714?e=1661990400&v=beta&t=-W3csJ2_PiDPqbJrqjpMFufQq6hkLx9YZwJ1uY41wdY',
                        ownersName: 'kakosergio',
                        feedImage:
                            'https://i.pinimg.com/564x/ea/c2/ca/eac2ca01f96ab29606d194fc7335857d.jpg'),
                    Feed(
                        ownerPortrait:
                            'https://media-exp2.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_800_800/0/1601238197714?e=1661990400&v=beta&t=-W3csJ2_PiDPqbJrqjpMFufQq6hkLx9YZwJ1uY41wdY',
                        ownersName: 'kakosergio',
                        feedImage:
                            'https://i.pinimg.com/564x/ea/c2/ca/eac2ca01f96ab29606d194fc7335857d.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
