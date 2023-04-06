import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'word_model.g.dart';

@JsonSerializable()
class WordModel extends Equatable {
  final int? id;
  final String? word;
  final String? tips;

  const WordModel({this.id, this.word, this.tips});

  factory WordModel.fromJson(Map<String, dynamic> json) {
    return _$WordModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WordModelToJson(this);

  @override
  List<Object?> get props => [id, word, tips];
}
