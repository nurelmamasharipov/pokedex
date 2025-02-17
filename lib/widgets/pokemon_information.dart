import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class PokemonInformation extends StatelessWidget {
  Color color;
  String image;
  String name;
  String type;

   PokemonInformation(
      {required this.color,
        required this.image,
        required this.type,
        required this.name,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.6,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 56),
        child: Column(
          children: [
            Container(
                height: 20,
                width: 35,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
                child: Center(
                  child: Text(
                    type,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                )
            ),
            SizedBox(height: 50,),
            SizedBox(
              height: 4,
              child: buildLinearProgressBar(),
            )
          ],
        ),
      ),
    );
  }
  LinearProgressBar buildLinearProgressBar(){
    return LinearProgressBar(
      maxSteps: 200,
      progressType: LinearProgressBar.progressTypeLinear,
      currentStep: 56,
      progressColor: color,
      backgroundColor: Colors.grey.withOpacity(0.2),
      borderRadius: BorderRadius.circular(10),
    );
  }
}


