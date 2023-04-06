import 'package:equatable/equatable.dart';

class Word extends Equatable {
  final int? id;
  final String? word;
  final String? tips;

  const Word({
    this.id,
    this.word,
    this.tips,
  });

  @override
  List<Object?> get props => [
        id,
        word,
        tips,
      ];
}
