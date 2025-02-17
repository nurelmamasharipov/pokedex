import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/widgets/pokemon_image.dart';

class PokemonCard extends StatelessWidget {
  final String? name;
  final String? image;
  final Color? color;
  final Function()? onTab;
  final String? type;

  const PokemonCard({
    this.color,
    this.onTab,
    this.name,
    this.image,
    this.type
    , super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTab,
        child: Container(
          width: 104,
          height: 112,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                  width: 1,
                  color: color ?? Colors.green
              )
          ),
          child: Stack(
            children: [
              Center(
                child: PokemonImage(image: image ?? 'bulba'),
              ),
              Positioned(right: 1,
                  child: Text('#12',
                    style: TextStyle(color: Colors.black, fontSize: 12),)),
              Align(
                alignment: const Alignment(0, 1),
                child: Container(
                  color: color,
                  height: 24,
                  width: double.infinity,
                  child: Text(name ?? '', style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
