import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';

class DescriptionPokemon extends StatelessWidget {
  final Pokemon pokemon;
  const DescriptionPokemon({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name ?? ''),
      ),

      //IMAGEM
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Card(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 300,
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Image.network(pokemon.thumbnailImage ?? ''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '#${pokemon.number}',
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),

              //DESCRIÇÂO
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  pokemon.description ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              //TIPO
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                child: Row(
                  children: const [
                    Text(
                      'Tipo:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      '${pokemon.type}',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              //FRAQUEZAS

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Row(
                  children: const [
                    Text(
                      'Fraquezas:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 20),
                child: Row(
                  children: [
                    Text(
                      '${pokemon.weakness}',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
