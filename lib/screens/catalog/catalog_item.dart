import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:ldsw_widgets/types/get_pokemon_response.dart';

class CatalogItem extends StatelessWidget {
  final Result pokemon;

  const CatalogItem({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withValues(alpha: 0.4),
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(pokemon.name)],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(pokemon.url)],
            ),
          )
        ],
      ),
    );
  }
}
