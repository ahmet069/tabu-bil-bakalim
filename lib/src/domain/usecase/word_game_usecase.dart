import '../entities/word/word.dart';
import '../repository/word_game_repository.dart';

class WordGameUsecase {
  final WordGameRepository _wordGameRepository;

  WordGameUsecase(this._wordGameRepository);

  Future<List<Word>> getAllWords() async => _wordGameRepository.getAllWords();
}
