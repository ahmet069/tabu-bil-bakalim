// ignore_for_file: non_constant_identifier_names

import '../../domain/entities/tabu/tabu.dart';
import '../../domain/repository/tabu_repository.dart';
import '../datasources/local/tabo/tabu_local_data_source.dart';

class TabuRepositoryImpl extends TabuRepository {
  final TabuLocalDataSource _tabuLocalDataSource;
  TabuRepositoryImpl(this._tabuLocalDataSource);

  @override
  Future<List<Tabu>> GetRandomTabo() async {
    try {
      final result = await _tabuLocalDataSource.GetRandomTabo();
      return result.map((e) => e.toEntity()).toList();
    } catch (_) {
      rethrow;
    }
  }
}
