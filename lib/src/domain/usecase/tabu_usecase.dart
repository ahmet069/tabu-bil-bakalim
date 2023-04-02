// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/tabu/tabu.dart';
import '../repository/tabu_repository.dart';

class TabuUsecase {
  final TabuRepository _repository;
  TabuUsecase(this._repository);

  Future<List<Tabu>> GetRandomTabo() async => _repository.GetRandomTabo();
}
