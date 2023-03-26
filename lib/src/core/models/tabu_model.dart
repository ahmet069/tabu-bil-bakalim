// To parse this JSON data, do
//
//     final tabuModel = tabuModelFromJson(jsonString);

import 'dart:convert';

TabuModel tabuModelFromJson(String str) => TabuModel.fromJson(json.decode(str));

String tabuModelToJson(TabuModel data) => json.encode(data.toJson());

class TabuModel {
  TabuModel({
    required this.id,
    required this.word,
    required this.tabu1,
    required this.tabu2,
    required this.tabu3,
    required this.tabu4,
    required this.tabu5,
  });

  final int id;
  final String word;
  final String tabu1;
  final String tabu2;
  final String tabu3;
  final String tabu4;
  final String tabu5;

  factory TabuModel.fromJson(Map<String, dynamic> json) => TabuModel(
        id: json["id"],
        word: json["word"],
        tabu1: json["tabu1"],
        tabu2: json["tabu2"],
        tabu3: json["tabu3"],
        tabu4: json["tabu4"],
        tabu5: json["tabu5"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "word": word,
        "tabu1": tabu1,
        "tabu2": tabu2,
        "tabu3": tabu3,
        "tabu4": tabu4,
        "tabu5": tabu5,
      };
}
