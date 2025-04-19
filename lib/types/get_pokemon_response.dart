// To parse this JSON data, do
//
//     final getPokemonResponse = getPokemonResponseFromJson(jsonString);

import 'dart:convert';

GetPokemonResponse getPokemonResponseFromJson(String str) =>
    GetPokemonResponse.fromJson(json.decode(str));

String getPokemonResponseToJson(GetPokemonResponse data) =>
    json.encode(data.toJson());

class GetPokemonResponse {
  int count;
  String next;
  dynamic previous;
  List<Result> results;

  GetPokemonResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory GetPokemonResponse.fromJson(Map<String, dynamic> json) =>
      GetPokemonResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  String name;
  String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
