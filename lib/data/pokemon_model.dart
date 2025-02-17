
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

  const PokemonModel(
     this.color,
     this.image,
     this.height,
     this.description,
     this.moves,
     this.weight,
      this.atk,
      this.hp
  );
}