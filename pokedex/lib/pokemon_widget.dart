import 'package:flutter/material.dart';
import 'package:pokedex/description.dart';
import 'package:pokedex/pokemon.dart';

class PokemonWideget extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonWideget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DescriptionPokemon(
              pokemon: pokemon,
            );
          }));
        },
        child: Row(
          children: [
            Image.network(
              pokemon.thumbnailImage ?? '',
              height: 115,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    '#${pokemon.number}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  pokemon.name ?? '',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
