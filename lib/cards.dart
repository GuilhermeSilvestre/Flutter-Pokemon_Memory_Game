import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'control_cards.dart';

class card extends StatelessWidget {
  card([this.imagem = 'neutral']) {}

  String imagem = 'neutral';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/pokecard$imagem.png'),
          fit: BoxFit.fill,
        ),
      ),
      margin: EdgeInsets.all(8),
      //height: 80,
      //width: 40,
      //color: Color(0XFF670067),
    );
  }
}
