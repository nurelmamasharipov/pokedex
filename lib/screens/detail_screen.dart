import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/widgets/pokemon_information.dart';

import '../widgets/pokemon_image.dart';

class DetailScreen extends StatelessWidget {
  Color color;
  String image;
  String name;
  String type;

  DetailScreen(
      {required this.color,
      required this.image,
      required this.type,
      required this.name,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(children: [
        Positioned(
          bottom: 1,
          left: 1,
          right: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: PokemonInformation(color: color, image: image, type: type, name: name),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            color: Colors.white.withOpacity(0.2),
            Icons.catching_pokemon,
            size: 308,
          ),
        ),
        Align(
          alignment: Alignment(0, -0.45),
          child: SizedBox(
            height: 200,
            width: 200,
            child: PokemonImage(image: image),
          )

        )
      ]),
    );
  }
}
