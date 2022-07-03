import 'package:flutter/material.dart';
import 'package:instagram_desafio/models/stories_bubble.dart';

class Feed extends StatelessWidget {
  final String feedImage;
  final String ownerPortrait;
  final String ownersName;
  static const curtidas = '22.345 curtidas';
  static const comentarioPrincipal =
      'Exemplo de apresentação de feed com comentário que deve ser verificado depois';

  const Feed({
    required this.feedImage,
    required this.ownerPortrait,
    required this.ownersName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height * .7,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Ocultar anúncio',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.red[800],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Denunciar anúncio',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.red[800],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Sobre esta conta',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Sobre os anúncios do Kakogram',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.menu),
              ),
            ],
            shape: Border.all(
              color: Colors.black,
            ),
            elevation: 0,
            titleSpacing: 0,
            leadingWidth: 0,
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: StoriesBubble(
                    isToolbar: true,
                    contexto: context,
                    isFeed: true,
                    imageUrl: ownerPortrait,
                    name: ownersName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                      ownersName),
                ),
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: mediaQuery.size.height * .5,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(feedImage),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.messenger_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_outlined),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          curtidas,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: ownersName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          TextSpan(
                            text: '  $comentarioPrincipal',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    ),
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
