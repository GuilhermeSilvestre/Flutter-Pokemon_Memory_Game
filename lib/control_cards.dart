import 'visibility.dart';

class ControlCardVisible {
  List<String> pokemonList = [
    'bulbasauro',
    'charmander',
    'squirtle',
    'mew',
    'mewtwo',
    'pikachu',
    'eevee',
    'togepi',
    'bulbasauro',
    'charmander',
    'squirtle',
    'mew',
    'mewtwo',
    'pikachu',
    'eevee',
    'togepi',
  ];
  late List<CardVisibility> _actualVisibility;

  void embaralha() {
    pokemonList.shuffle();
    _actualVisibility = [
      CardVisibility(visibility: true, pokemon: pokemonList[0]),
      CardVisibility(visibility: true, pokemon: pokemonList[1]),
      CardVisibility(visibility: true, pokemon: pokemonList[2]),
      CardVisibility(visibility: true, pokemon: pokemonList[3]),
      CardVisibility(visibility: true, pokemon: pokemonList[4]),
      CardVisibility(visibility: true, pokemon: pokemonList[5]),
      CardVisibility(visibility: true, pokemon: pokemonList[6]),
      CardVisibility(visibility: true, pokemon: pokemonList[7]),
      CardVisibility(visibility: true, pokemon: pokemonList[8]),
      CardVisibility(visibility: true, pokemon: pokemonList[9]),
      CardVisibility(visibility: true, pokemon: pokemonList[10]),
      CardVisibility(visibility: true, pokemon: pokemonList[11]),
      CardVisibility(visibility: true, pokemon: pokemonList[12]),
      CardVisibility(visibility: true, pokemon: pokemonList[13]),
      CardVisibility(visibility: true, pokemon: pokemonList[14]),
      CardVisibility(visibility: true, pokemon: pokemonList[15]),
    ];
  }

  bool getVisibility(int index) {
    return _actualVisibility[index].visibility;
  }

  void setVisibilityFalse(int index) {
    _actualVisibility[index].visibility = false;
  }

  String getPokemon(int index) {
    return _actualVisibility[index].pokemon;
  }
}
