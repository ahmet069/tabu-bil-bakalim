// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Tabu extends Equatable {
  int? id;
  String? word;
  String? tabu1;
  String? tabu2;
  String? tabu3;
  String? tabu4;
  String? tabu5;

  Tabu({
    this.id,
    this.word,
    this.tabu1,
    this.tabu2,
    this.tabu3,
    this.tabu4,
    this.tabu5,
  });

  @override
  List<Object?> get props => [
        id,
        word,
        tabu1,
        tabu2,
        tabu3,
        tabu4,
        tabu5,
      ];

  @override
  bool get stringify => true;
}
