import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/data/pokemon_model.dart';
import 'package:pokedex/screens/detail_screen.dart';
import 'package:pokedex/widgets/pokemon_card.dart';

const charmander = 'charmander';
const bulba = 'bulba';
const squirtle = 'squirtle';
const butterfree = 'butterfree';
const pikachu = 'pikachu';
const gastly = 'gastly';
const ditto = 'ditto';
const mew = 'mew';
const aron = 'aron';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listPokemon = [
      const PokemonModel(
          Colors.green,
          bulba,
          0.7,
          'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.',
          'Chlorophyll Overgrow',
          6.9,
          49,
          45,
          'Bulbazaur',
          'Grass',
          49,
          65,
          65,
          45),
      const PokemonModel(
          Colors.orange,
          charmander,
          0.6,
          'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.',
          'Mega-Punch Fire-Punch',
          8.5,
          52,
          39,
          'Charmander',
          'Fire',
          43,
          60,
          50,
          65),
      const PokemonModel(
          Colors.blue,
          squirtle,
          0.5,
          'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
          'Torrent Rain-Dish',
          9.0,
          48,
          44,
          'Squirtle',
          'Water',
          65,
          50,
          64,
          43),
      const PokemonModel(
          Colors.lightGreen,
          butterfree,
          1.1,
          'In battle, it flaps its wings at great speed to release highly toxic dust into the air.',
          'Compound-Eyes Tinted-Lens',
          32.0,
          45,
          60,
          'Butterfree',
          'Bug',
          50,
          90,
          80,
          70),
      const PokemonModel(
          Colors.yellow,
          pikachu,
          0.4,
          'Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.',
          'Mega-Punch Pay-Day',
          6.0,
          55,
          35,
          'Pikachu',
          'Electric',
          40,
          50,
          50,
          90),
      const PokemonModel(
          Colors.deepPurple,
          gastly,
          1.3,
          'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.',
          'Levitate',
          0.1,
          35,
          30,
          'Gastly',
          'Ghost',
          30,
          100,
          35,
          80),
      const PokemonModel(
          Colors.white24,
          ditto,
          0.3,
          'It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.',
          'Limber Imposter',
          4.0,
          48,
          48,
          'Ditto',
          'Normal',
          48,
          48,
          48,
          48),
      const PokemonModel(
          Colors.pink,
          mew,
          0.4,
          'When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.',
          'Synchronize',
          4.0,
          100,
          100,
          'Mew',
          'Psychic',
          100,
          100,
          100,
          100),
      const PokemonModel(
          Colors.grey,
          aron,
          0.4,
          'It eats iron ore - and sometimes railroad tracks - to build up the steel armor that protects its body.',
          'Sturdy Rock-Head',
          60.0,
          70,
          50,
          'Aron',
          'Steel',
          100,
          40,
          40,
          30),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.catching_pokemon,
                    size: 32,
                  ),
                  Text('PokeDex', style: TextStyle(fontSize: 24)),
                  Icon(
                    Icons.arrow_downward,
                    size: 32,
                    color: Colors.grey,
                  )
                ],
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: listPokemon.length,
                    itemBuilder: (context, index) {
                      final item = listPokemon[index];
                      return PokemonCard(
                        image: item.image,
                        name: item.name,
                        color: item.color,
                        onTab: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                color: item.color,
                                image: item.image,
                                type: item.type,
                                name: item.name,
                                atk: item.atk,
                                def: item.def,
                                description: item.description,
                                height: item.height,
                                hp: item.hp,
                                moves: item.moves,
                                satk: item.satk,
                                sdef: item.sdef,
                                spd: item.spd,
                                weight: item.weight,
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
