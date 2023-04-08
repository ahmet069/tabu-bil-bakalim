import '../entities/word/word.dart';

abstract class WordGameRepository {
  Future<List<Word>> getAllWords();
}
