import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/tabu/tabu.dart';

part 'tabu_model.g.dart';

@JsonSerializable()
class TabuModel extends Equatable {
  final int? id;
  final String? word;
  final String? tabu1;
  final String? tabu2;
  final String? tabu3;
  final String? tabu4;
  final String? tabu5;

  const TabuModel({
    this.id,
    this.word,
    this.tabu1,
    this.tabu2,
    this.tabu3,
    this.tabu4,
    this.tabu5,
  });

  factory TabuModel.fromJson(Map<String, dynamic> json) {
    return _$TabuModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TabuModelToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      word,
      tabu1,
      tabu2,
      tabu3,
      tabu4,
      tabu5,
    ];
  }

  Tabu toEntity() {
    return Tabu(
      id: id,
      word: word,
      tabu1: tabu1,
      tabu2: tabu2,
      tabu3: tabu3,
      tabu4: tabu4,
      tabu5: tabu5,
    );
  }
}
