import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class PokemonInformation extends StatelessWidget {
  final Color color;
  final String image;
  final String name;
  final String type;
  final String description;
  final String moves;
  final double weight;
  final double height;
  final int hp;
  final int atk;
  final int def;
  final int satk;
  final int sdef;
  final int spd;

  const PokemonInformation({
    required this.color,
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              type,
              style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "About",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildInfoColumn(Icons.monitor_weight, '$weight kg', 'Weight'),
              _buildInfoColumn(Icons.height, '$height m', 'Height'),
              _buildInfoColumn(Icons.sports_mma, moves, 'Moves'),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.7)),
          ),
          const SizedBox(height: 20),
          const Text(
            "Base Stats",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 10),
          _buildStatRow("HP", hp),
          _buildStatRow("ATK", atk),
          _buildStatRow("DEF", def),
          _buildStatRow("SATK", satk),
          _buildStatRow("SDEF", sdef),
          _buildStatRow("SPD", spd),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.black54),
        const SizedBox(height: 5),
        Text(value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black54)),
      ],
    );
  }

  Widget _buildStatRow(String label, int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: color))),
          const SizedBox(width: 10),
          SizedBox(width: 30, child: Text(value.toString(), style: const TextStyle(fontWeight: FontWeight.bold))),
          const SizedBox(width: 10),
          Expanded(
            child: LinearProgressBar(
              maxSteps: 100,
              progressType: LinearProgressBar.progressTypeLinear,
              currentStep: value,
              progressColor: color,
              backgroundColor: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
