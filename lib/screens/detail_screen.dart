import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/widgets/pokemon_information.dart';

import '../widgets/pokemon_image.dart';

class DetailScreen extends StatelessWidget {
  Color color;
  String image;
  String name;
  String type;
  String description;
  String moves;
  double weight;
  double height;
  int hp;
  int atk;
  int def;
  int satk;
  int sdef;
  int spd;

  DetailScreen(
      {required this.color,
      required this.image,
      required this.type,
      required this.name,
      required this.description,
      required this.moves,
      required this.weight,
      required this.height,
      required this.hp,
      required this.atk,
      required this.def,
      required this.satk,
      required this.sdef,
      required this.spd,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(name, style: TextStyle(color: Colors.white, fontSize: 24),),
        ),
      ),
      body: Stack(children: [
        Positioned(
          bottom: 1,
          left: 1,
          right: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: PokemonInformation(
                color: color, image: image, type: type, name: name, description: description, moves: moves, weight: weight, height: height, hp: hp, atk: atk, def: def, satk: satk, sdef: sdef, spd: spd),
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
            ))
      ]),
    );
  }
}
