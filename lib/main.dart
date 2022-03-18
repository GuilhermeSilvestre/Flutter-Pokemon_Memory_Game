import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory/control_cards.dart';
import 'cards.dart';
import 'control_cards.dart' as controlcards; // bugzinho, deixa isso aqui
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Memory Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ControlCardVisible cardVisible = ControlCardVisible();

  _MyHomePageState() {
    cardVisible.embaralha();
  }

  bool clicou = false;

  List<bool> click = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    print('---');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: Text(
              'POKEMON MEMORY GAME',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      if (cardVisible.getVisibility(0))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                click[0] = !click[0];
                                print(cardVisible.getPokemon(0));
                                print(click[0]);
                              });
                            },
                            child: click[0]
                                ? card(cardVisible.getPokemon(0))
                                : card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(1))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                click[1] = !click[1];
                                print(cardVisible.getPokemon(1));
                                print(click[1]);
                              });
                            },
                            child: click[1]
                                ? card(cardVisible.getPokemon(1))
                                : card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(2))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(2));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(3))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(3));
                              });
                            },
                            child: card(),
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      if (cardVisible.getVisibility(4))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(4));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(5))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(5));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(6))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(6));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(7))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(7));
                              });
                            },
                            child: card(),
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      if (cardVisible.getVisibility(8))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(8));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(9))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(9));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(10))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(10));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(11))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(11));
                              });
                            },
                            child: card(),
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      if (cardVisible.getVisibility(12))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(12));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(13))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(13));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(14))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(14));
                              });
                            },
                            child: card(),
                          ),
                        ),
                      if (cardVisible.getVisibility(15))
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                print(cardVisible.getPokemon(15));
                              });
                            },
                            child: card(),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                cardVisible.embaralha();
                print(cardVisible.pokemonList[0]);
              });
            },
            child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              child: Text(
                'RESTART GAME',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
