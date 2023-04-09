import '../../../dummy_data/word_game_data.dart';
import '../../../models/word_model/word_model.dart';

abstract class WordGameLocalDataSource {
  Future<List<WordModel>> getAllWord();
}

class WordGameLocalDataSourceImpl extends WordGameLocalDataSource {
  @override
  Future<List<WordModel>> getAllWord() async {
    try {
      final data = WordGameData.getAllWordGameData();
      final dataList = data.map((e) => WordModel.fromJson(e)).toList();
      return dataList;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
