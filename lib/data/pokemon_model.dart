
import 'dart:ui';

class PokemonModel{
  final Color color;
  final double weight;
  final double height;
  final String moves;
  final String image;
  final int hp;
  final int atk;
  final String description;
  final String name;
  final String type;
  final int def;
  final int satk;
  final int sdef;
  final int spd;

  const PokemonModel(
     this.color,
     this.image,
     this.height,
     this.description,
     this.moves,
     this.weight,
      this.atk,
      this.hp,
      this.name,
      this.type,
      this.def,
      this.satk,
      this.sdef,
      this.spd
  );
}