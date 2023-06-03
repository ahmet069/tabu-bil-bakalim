import '../../../dummy_data/tabu_data.dart';
import '../../../models/tabu_model/tabu_model.dart';

abstract class TabuLocalDataSource {
  Future<List<TabuModel>> GetRandomTabo();
}

class TabuLocalDataSourceImpl extends TabuLocalDataSource {
  @override
  Future<List<TabuModel>> GetRandomTabo() async {
    try {
      final data = TabuData.getAllTabuWords();
      final dataList = data.map((e) => TabuModel.fromJson(e)).toList();
      return dataList;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
