import 'package:flutter/widgets.dart';

class PokemonImage extends StatelessWidget {
  final String image;

  const PokemonImage({
  required this.image,
  super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$image.png',
      width: 72,
      height: 72,
    );
  }
}
