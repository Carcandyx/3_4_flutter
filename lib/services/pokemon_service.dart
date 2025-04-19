import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:ldsw_widgets/types/get_pokemon_response.dart';

class PokemonService {
  FutureOr<List<Result>> getPokemonList({page = int}) async {
    var client = http.Client();
    var offset = (page - 1) * 10;
    var uri =
        Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=10&offset=$offset');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var parsedBody = getPokemonResponseFromJson(response.body);
      return parsedBody.results;
    }
    return [];
  }
}
