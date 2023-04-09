import '../../domain/entities/word/word.dart';
import '../../domain/repository/word_game_repository.dart';
import '../datasources/local/word_game/word_game_data_source.dart';

class WordGameRepositoryImpl extends WordGameRepository {
  final WordGameLocalDataSource _wordGameLocalDataSource;
  WordGameRepositoryImpl(this._wordGameLocalDataSource);

  @override
  Future<List<Word>> getAllWords() async {
    try {
      final result = await _wordGameLocalDataSource.getAllWord();
      return result.map((e) => e.toEntity()).toList();
    } catch (_) {
      rethrow;
    }
  }
}
